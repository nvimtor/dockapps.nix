{ mkDockapp, lib, libpulseaudio, ... }:
mkDockapp {
  pname = "wmpulse";
  meta = {
    description = "PulseAudio volume control dockapp";
    homepage = "https://www.dockapps.net/wmpulse";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  extraDeps = [ libpulseaudio ];
}
