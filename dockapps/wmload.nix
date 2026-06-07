{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmload";
  meta = {
    description = "Load average dockapp similar to xload";
    homepage = "https://www.dockapps.net/wmload";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
