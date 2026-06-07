{
  mkDockapp,
  libdockapp4Source,
  lib,
}:
(mkDockapp {
  pname = "libdockapp4";

  meta = {
    description = "Library providing a framework for dockapps";
    homepage = "https://www.dockapps.net/libdockapp";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
  };

  withLibdockapp = false;
}).overrideAttrs
  (
    _: prev: {
      src = "${libdockapp4Source}/src";

      NIX_CFLAGS_COMPILE = "-fcommon"; # TODO

      postPatch = prev.postPatch + ''
        # NOTE fix unsafe fprintf
        substituteInPlace daconf.c \
          --replace "fprintf(F, buffer);" "fprintf(F, \"%s\", buffer);"
      '';

      installPhase = ''
        runHook preInstall
        mkdir -p $out/lib
        mkdir -p $out/include/libdockapp4

        install -m755 libdockapp4.so $out/lib/libdockapp4.so

        install -m644 daconf.h    $out/include/libdockapp4/daconf.h
        install -m644 dockapp.h   $out/include/libdockapp4/dockapp.h
        install -m644 daxutils.h  $out/include/libdockapp4/daxutils.h
        install -m644 damisc.h    $out/include/libdockapp4/damisc.h
        runHook postInstall
      '';
    }
  )
