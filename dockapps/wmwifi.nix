{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmwifi";
  meta = {
    description = "WiFi signal strength dockapp";
    homepage = "https://www.dockapps.net/wmwifi";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  hardeningDisable = [ "format" ];
}
