{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmtictactoe";
  meta = {
    description = "Tic-tac-toe game in a dockapp";
    homepage = "https://www.dockapps.net/wmtictactoe";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
