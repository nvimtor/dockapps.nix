{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "wmmisc";
  meta = {
    description = "Miscellaneous system monitor dockapp";
    homepage = "https://www.dockapps.net/wmmisc";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  cflags = [ "-fcommon" ];
}
