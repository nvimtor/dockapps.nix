(import ./lib.nix).mkDockappModule {
  name = "wmweather";
  description = "wmweather dockapp (METAR weather monitor)";

  spec = {
    front_color        = { type = "str";   default = null;  cliOnly = false; };
    back_color         = { type = "str";   default = null;  cliOnly = false; };
    gusty_wind_color   = { type = "str";   default = null;  cliOnly = false; };
    data_color         = { type = "str";   default = null;  cliOnly = false; };
    station_time_color = { type = "str";   default = null;  cliOnly = false; };
    lcd                = { type = "bool";  default = false; cliOnly = true;  };
    backlight          = { type = "bool";  default = false; cliOnly = true;  };
    station            = { type = "str";   default = null;  cliOnly = false; };
    compat             = { type = "bool";  default = true;  cliOnly = true;  };
    delay              = { type = "int";   default = 15;    cliOnly = false; };
    past_the_hour      = { type = "bool";  default = false; cliOnly = true;  };
    metric             = { type = "bool";  default = false; cliOnly = true;  };
    chill              = { type = "bool";  default = false; cliOnly = true;  };
    heat               = { type = "bool";  default = false; cliOnly = true;  };
    beaufort           = { type = "bool";  default = false; cliOnly = true;  };
    knots              = { type = "bool";  default = false; cliOnly = true;  };
    utc                = { type = "bool";  default = false; cliOnly = true;  };
    time               = { type = "str";   default = null;  cliOnly = false; };
    proxy              = { type = "str";   default = null;  cliOnly = false; };
    proxy_user         = { type = "str";   default = null;  cliOnly = false; };
    hPa                = { type = "bool";  default = false; cliOnly = true;  };
    kPa                = { type = "bool";  default = false; cliOnly = true;  };
    mmHg               = { type = "bool";  default = false; cliOnly = true;  };
    mps                = { type = "bool";  default = false; cliOnly = true;  };
  };
}
