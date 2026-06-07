{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmtime";
  meta = {
    description = "Time and date dockapp";
    homepage = "https://www.dockapps.net/wmtime";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  hardeningDisable = [ "format" ];
}
