{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "asbeats";
  meta = {
    description = "Internet beat dockapp showing Swatch internet time";
    homepage = "https://www.dockapps.net/asbeats";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
