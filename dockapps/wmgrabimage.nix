{ mkDockapp, lib, perl, wget, imagemagick, ... }:
(mkDockapp {
  pname = "wmGrabImage";
  meta = {
    description = "Dockapp displaying a grabbed image from a URL";
    homepage = "https://www.dockapps.net/wmgrabimage";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  sourceDir = "wmgrabimage";
  cflags = [ "-std=gnu89" ];
}).overrideAttrs (old: {
  # src = "${wmgrabimageSource}/src";
  # version = wmgrabimageSource.revision;
  postPatch = (old.postPatch or "") + ''
    substituteInPlace wmGrabImage.c \
      --replace-fail '"GrabImage ' '"'"$out"'/bin/GrabImage '

    substituteInPlace GrabImage \
      --replace-fail '#!/usr/bin/perl' '#!${perl}/bin/perl' \
      --replace-fail 'wget '    '${wget}/bin/wget ' \
      --replace-fail 'convert ' '${imagemagick}/bin/convert '
  '';

  postInstall = (old.postInstall or "") + ''
    install -Dm755 GrabImage $out/bin/GrabImage
  '';
})
