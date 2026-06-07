{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmclock";
  meta = {
    description = "wmclock is an applet which displays the date and time in a dockable tile in the same style as the clock from the NEXTSTEP(tm) operating system. wmclock is specially designed for the Window Maker window manager, by Alfredo Kojima, and features multiple language support, twenty-four-hour and twelve-hour (am/pm) time display, and, optionally, can run a user-specified program on a mouse click. wmclock is derived from ASClock (now called ASClock classic), a similar clock for the AfterStep window manager";
    homepage = "https://www.dockapps.net/wmclock";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  cflags = [ "-fcommon" ];
}
