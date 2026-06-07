{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmmemload";
  meta = {
    description = "Memory and swap usage monitor dockapp";
    homepage = "https://www.dockapps.net/wmmemload";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
