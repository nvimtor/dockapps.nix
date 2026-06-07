{ mkDockapp, lib, imlib2, ... }:
mkDockapp {
  pname = "buttonmaker";
  meta = {
    description = "Creates a customizable dockapp button that executes a command on click";
    homepage = "https://www.dockapps.net/buttonmaker";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  extraDeps = [ imlib2 ];
}
