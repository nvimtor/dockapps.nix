{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmnetwork";
  meta = {
    description = "Network usage dockapp showing transfer rates";
    homepage = "https://www.dockapps.net/wmnetwork";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
