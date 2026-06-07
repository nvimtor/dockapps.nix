(import ./lib.nix).mkDockappModule {
  name = "wmsun";
  description = "wmsun dockapp (sunrise/sunset times)";

  spec = {
    high_quality   = { type = "bool";  default = false; cliOnly = true;  };
    twelve_hour    = { type = "bool";  default = false; cliOnly = true;  };
    # wmsun convention: positive longitude is west.
    latitude       = { type = "float"; default = 0.0;   cliOnly = false; };
    longitude      = { type = "float"; default = 0.0;   cliOnly = false; };
    user_time_diff = { type = "float"; default = 0.0;   cliOnly = false; };
    user_date      = { type = "int";   default = 0;     cliOnly = false; };
  };
}
