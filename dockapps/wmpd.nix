{ mkDockapp, lib, libmpdclient, ... }:
mkDockapp {
  pname = "wmpd";
  meta = {
    description = "MPD client dockapp";
    homepage = "https://www.dockapps.net/wmpd";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  extraDeps = [ libmpdclient ];
  hardeningDisable = [ "format" ];
}
