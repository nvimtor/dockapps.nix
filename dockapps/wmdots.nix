{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmdots";
  meta = {
    description = "Multi shape 3D rotating dots";
    homepage = "https://www.dockapps.net/wmdots";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
