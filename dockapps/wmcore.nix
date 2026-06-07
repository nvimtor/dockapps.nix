{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmcore";
  meta = {
    description = "Minimal dockapp template skeleton";
    homepage = "https://www.dockapps.net/wmcore";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
