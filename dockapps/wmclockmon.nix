{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmclockmon";
  meta = {
    description = "Clock monitor dockapp with date and configurable display";
    homepage = "https://www.dockapps.net/wmclockmon";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
