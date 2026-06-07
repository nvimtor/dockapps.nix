{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmmoonclock";
  meta = {
    description = "Shows lunar ephemeris to fairly high accuracy.";
    homepage = "https://www.dockapps.net/wmmoonclock";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  cflags = [ "-fcommon" "-std=gnu89" ];
}
