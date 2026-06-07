{ mkDockapp, lib, libxft, pkg-config, ... }:
mkDockapp {
  pname = "wmbluecpu";
  meta = {
    description = "Blue-themed CPU monitor dockapp with Xft text rendering";
    homepage = "https://www.dockapps.net/wmbluecpu";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  extraDeps = [ pkg-config libxft ];
}
