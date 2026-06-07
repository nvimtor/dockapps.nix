{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmsm";
  meta = {
    description = "System monitor dockapp from the wmsm.app suite";
    homepage = "https://www.dockapps.net/wmsm.app";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  sourceDir = "wmsm.app";
}
