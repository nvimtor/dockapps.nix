{ mkDockapp, lib, perl, wget, ... }:
(mkDockapp {
  pname = "wmSpaceWeather";
  meta = {
    description = "Geomagnetic Kp index space weather dockapp";
    homepage = "https://www.dockapps.net/wmspaceweather";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  sourceDir = "wmSpaceWeather";
}).overrideAttrs (old: {
  postPatch = (old.postPatch or "") + ''
    substituteInPlace wmSpaceWeather.c \
      --replace-fail '"GetKp"' '"'"$out"'/bin/GetKp"'

    substituteInPlace GetKp \
      --replace-fail '#!/usr/bin/perl' '#!${perl}/bin/perl' \
      --replace-fail 'wget '           '${wget}/bin/wget '
  '';

  postInstall = (old.postInstall or "") + ''
    install -Dm755 GetKp $out/bin/GetKp
  '';
})
