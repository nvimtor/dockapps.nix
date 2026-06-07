(import ./lib.nix).mkDockappModule {
  name = "dwgo";
  description = "dwgo dockapp (multi-station METAR weather)";

  spec = {
    time_color        = { type = "str";  default = null;  cliOnly = false; };
    # dwgo's long option is --temp-color, conf key is temperature_color.
    temperature_color = { type = "str";  default = null;  cliOnly = false; flag = "--temp-color"; };
    city_color        = { type = "str";  default = null;  cliOnly = false; };
    metar_city        = { type = "bool"; default = false; cliOnly = true;  };
    stations          = { type = "str";  default = null;  cliOnly = false; };
    fahrenheit        = { type = "bool"; default = false; cliOnly = true;  };
    verbose           = { type = "bool"; default = false; cliOnly = true;  };
  };

  # dwgo needs -*-clean-bold-*-*-*-22-* from xorg.fontschumachermisc, not in
  # nixos's stock X FontPath. session scope per [[feedback-x-font-path-scope]].
  extraConfig = { pkgs, ... }: let
    fontPkg = pkgs.xorg.fontschumachermisc;
    fontDir = "${fontPkg}/share/fonts/X11/misc";
  in {
    home.packages = [ fontPkg ];

    xsession.initExtra = ''
      ${pkgs.xset}/bin/xset +fp ${fontDir}
      ${pkgs.xset}/bin/xset fp rehash
    '';
  };
}
