{ mkDockapp, lib, ... }:
mkDockapp {
  pname = "mount.app";
  meta = {
    description = "Dockapp for mounting and unmounting filesystems";
    homepage = "https://www.dockapps.net/mount.app";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  sourceDir = "mount.app";
}
