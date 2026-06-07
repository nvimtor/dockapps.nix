{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "asmon";
  meta = {
    description = "AfterStep system monitor showing CPU, memory, swap usage and temperature";
    homepage = "https://www.dockapps.net/asmon";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
