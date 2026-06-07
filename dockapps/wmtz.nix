{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmtz";
  meta = {
    description = "Time zone dockapp displaying time in multiple zones";
    homepage = "https://www.dockapps.net/wmtz";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
