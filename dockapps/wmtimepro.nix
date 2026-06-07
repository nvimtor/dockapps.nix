{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmtimepro";
  meta = {
    description = "Enhanced time dockapp with multiple display modes";
    homepage = "https://www.dockapps.net/wmtimepro";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
