{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmshutdown";
  meta = {
    description = "A graphical dock application to shutdown computer.";
    homepage = "https://wmshutdown.sourceforge.net/";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
