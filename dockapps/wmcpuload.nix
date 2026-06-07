{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmcpuload";
  meta = {
    description = "CPU load dockapp displaying usage with percentage and graph";
    homepage = "https://www.dockapps.net/wmcpuload";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
