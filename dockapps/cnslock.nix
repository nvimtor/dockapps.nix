{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "cnslock";
  meta = {
    description = "Dockapp showing the state of Caps, Num and Scroll lock keys";
    homepage = "https://www.dockapps.net/cnslock";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  cflags = [ "-fcommon" ];
}
