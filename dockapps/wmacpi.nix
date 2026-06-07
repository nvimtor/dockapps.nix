{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmacpi";
  meta = {
    description = "ACPI laptop battery monitor dockapp";
    homepage = "https://www.dockapps.net/wmacpi";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };
}
