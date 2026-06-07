{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmifs";
  meta = {
    description = "WMiFS is a dockable applet for monitoring all your network interfaces, it’s designed for Window Maker’s dock, but of course, it works with other windowmanagers too

Oh BTW, WMiFS means ‘Window Maker InterFace Statistics’";
    homepage = "https://www.dockapps.net/wmtz";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
