{ mkDockapp, lib, libxft, pkg-config, ... }:
mkDockapp {
  pname = "wmblueclock";
  meta = {
    description = "Blue-themed clock dockapp with Xft text rendering";
    homepage = "https://www.dockapps.net/wmblueclock";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  extraDeps = [ pkg-config libxft ];
}
