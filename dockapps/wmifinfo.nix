{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmifinfo";
  meta = {
    description = "wmifinfo is a simple applet showing basic network info for all available interfaces. It shows IP address, netmask, gateway and MAC address. A bit like ifconfig";
    homepage = "https://www.dockapps.net/wmifinfo";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
