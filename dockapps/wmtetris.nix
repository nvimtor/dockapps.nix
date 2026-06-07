{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmtetris";
  meta = {
    description = "Tetris game in a dockapp";
    homepage = "https://www.dockapps.net/wmtetris";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
