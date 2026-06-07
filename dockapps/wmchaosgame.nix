{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmchaosgame";
  meta = {
    description = "Dockapp that plays the chaos game with a Sierpinski triangle";
    homepage = "https://www.dockapps.net/wmchaosgame";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
