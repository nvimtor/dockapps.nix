{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmmon";
  meta = {
    description = "System resource monitor dockapp tracking CPU, memory and uptime";
    homepage = "https://www.dockapps.net/wmmon";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
