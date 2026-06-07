{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmsysinfo";
  meta = {
    description = "System information dockapp";
    homepage = "https://www.dockapps.net/wmsysinfo";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
