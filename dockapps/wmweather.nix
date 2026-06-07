{ mkDockapp, lib, curl, ... }:
mkDockapp {
  pname = "wmweather";
  meta = {
    description = "Weather information dockapp using METAR data";
    homepage = "https://www.dockapps.net/wmweather";
    license = lib.licenses.gpl2Plus;
    maintainers = [ ];
    platforms = lib.platforms.linux;
  };

  extraDeps = [ curl ];
}
