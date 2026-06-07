{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmsysmon";
  meta = {
    description = "System monitor dockapp";
    homepage = "https://www.dockapps.net/wmsysmon";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
