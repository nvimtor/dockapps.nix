{ mkDockapp, lib, alsa-lib, ... }:
mkDockapp {
  pname = "wmamixer";
  meta = {
    description = "ALSA mixer dockapp";
    homepage = "https://www.dockapps.net/wmamixer";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  extraDeps = [ alsa-lib ];
}
