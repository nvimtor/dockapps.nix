{ mkDockapp, gnome-system-monitor, xkill, lib, ... }:
mkDockapp {
  pname = "cputnik";
  meta = {
    description = "A simple CPU and memory monitor";
    homepage = "https://www.dockapps.net/cputnik";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
  extraDeps = [ gnome-system-monitor xkill ];
}
