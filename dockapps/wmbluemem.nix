{ mkDockapp, lib, libxft, pkg-config, ... }:
mkDockapp {
  pname = "wmbluemem";
  meta = {
    description = "Blue-themed memory monitor dockapp with Xft text rendering";
    homepage = "https://www.dockapps.net/wmbluemem";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  extraDeps = [ pkg-config libxft ];
}
