{ mkDockapp, lib, playerctl, glib, pkg-config, ... }:
mkDockapp {
  pname = "wmusic";
  meta = {
    description = "Media player control dockapp using playerctl";
    homepage = "https://www.dockapps.net/wmusic";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  extraDeps = [ pkg-config playerctl glib ];
}
