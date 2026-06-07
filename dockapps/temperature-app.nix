{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "Temperature.app";
  meta = {
    description = "Dockapp showing outdoor temperature using METAR data";
    homepage = "https://www.dockapps.net/temperature.app";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  sourceDir = "Temperature.app";
  hardeningDisable = [ "format" ];
}
