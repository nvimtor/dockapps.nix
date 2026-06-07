{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmCalClock";
  meta = {
    description = "Calendar and clock dockapp";
    homepage = "https://www.dockapps.net/wmcalclock";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  sourceDir = "wmCalClock";
  srcSubdir = "Src";
  cflags = [ "-std=gnu89" ];
}
