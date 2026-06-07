{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "dwgo";
  meta = {
    description = "Dockapp showing the current weather information";
    homepage = "https://www.dockapps.net/dwgo";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  hardeningDisable = [ "format" ];
}
