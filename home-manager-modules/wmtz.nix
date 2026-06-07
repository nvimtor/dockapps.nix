(import ./lib.nix).mkDockappModule {
  name = "wmtz";
  description = "wmtz dockapp (multi time-zone clock)";

  spec = {
    front_color = { type = "str";   default = null;  cliOnly = false; };
    back_color  = { type = "str";   default = null;  cliOnly = false; };
    julian_date = { type = "bool";  default = false; cliOnly = true;  };
    editor      = { type = "str";   default = null;  cliOnly = false; };
    # wmtz convention: latitude positive to the west.
    latitude    = { type = "float"; default = 0.0;   cliOnly = false; };
    longitude   = { type = "float"; default = 0.0;   cliOnly = false; };

    time1 = { type = "str"; default = null; cliOnly = false; };
    time2 = { type = "str"; default = null; cliOnly = false; };
    time3 = { type = "str"; default = null; cliOnly = false; };
    time4 = { type = "str"; default = null; cliOnly = false; };
    time5 = { type = "str"; default = null; cliOnly = false; };

    # utdiff* is numeric for most time* values but a POSIX TZ string when the
    # paired time* = TZONE, so we accept it as a free-form string.
    utdiff1 = { type = "str"; default = null; cliOnly = false; };
    utdiff2 = { type = "str"; default = null; cliOnly = false; };
    utdiff3 = { type = "str"; default = null; cliOnly = false; };
    utdiff4 = { type = "str"; default = null; cliOnly = false; };
    utdiff5 = { type = "str"; default = null; cliOnly = false; };
  };
}
