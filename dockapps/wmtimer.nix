{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmtimer";
  meta = {
    description = "Countdown timer dockapp";
    homepage = "https://www.dockapps.net/wmtimer";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
