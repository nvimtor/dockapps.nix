{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmxss";
  meta = {
    description = "X screen saver status dockapp";
    homepage = "https://www.dockapps.net/wmxss";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  srcSubdir = "Src";
}
