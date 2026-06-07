{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmsun";
  meta = {
    description = "Sunrise and sunset times dockapp";
    homepage = "https://www.dockapps.net/wmsun";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  cflags = [ "-std=gnu89" ];
}
