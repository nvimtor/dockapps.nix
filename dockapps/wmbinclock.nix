{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmbinclock";
  meta = {
    description = "Binary clock dockapp";
    homepage = "https://www.dockapps.net/wmbinclock";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
