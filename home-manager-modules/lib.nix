let
  defaultFlag = name: "--" + builtins.replaceStrings [ "_" ] [ "-" ] name;
  flagOf = name: def: def.flag or (defaultFlag name);

  typeOf = lib: t:
         if t == "str"   then lib.types.nullOr lib.types.str
    else if t == "bool"  then lib.types.bool
    else if t == "int"   then lib.types.int
    else if t == "float" then lib.types.float
    else if t == "scale" then lib.types.ints.between 1 4
    else throw "dockapp lib: unknown option type ${t}";

  formatBool = b: if b then "yes" else "no";
  formatValue = type: v: if type == "bool" then formatBool v else toString v;

  sharedSpec = {
    border_dark  = { type = "str";   default = null;  cliOnly = false; };
    border_light = { type = "str";   default = null;  cliOnly = false; };
    scale        = { type = "scale"; default = 1;     cliOnly = false; };
    display      = { type = "str";   default = null;  cliOnly = false; };
    geometry     = { type = "str";   default = null;  cliOnly = false; };
    back_image   = { type = "str";   default = null;  cliOnly = false; };
    windowed     = { type = "bool";  default = false; cliOnly = true;  };
    dock         = { type = "bool";  default = false; cliOnly = true;  };
  };

  confLinesFrom = lib: spec: values: lib.pipe spec [
    (lib.filterAttrs (_n: d: !d.cliOnly))
    (lib.mapAttrsToList (n: d:
      let v = values.${n}; in
      if v == null || v == d.default then null
      else "${n}=${formatValue d.type v}"))
    (lib.filter (l: l != null))
  ];

  cliFlagsFrom = lib: spec: values: lib.pipe spec [
    (lib.filterAttrs (_n: d: d.cliOnly))
    (lib.mapAttrsToList (n: d:
      let v = values.${n}; in
      if v == d.default then null
      else if d.type == "bool" then
        if v then flagOf n d else "${flagOf n d}=no"
      else "${flagOf n d}=${formatValue d.type v}"))
    (lib.filter (l: l != null))
  ];

in {
  inherit sharedSpec confLinesFrom cliFlagsFrom typeOf flagOf;

  mkDockappModule =
    { name
    , spec ? {}
    , extraConfig ? (_: {})
    , description ? "${name} dockapp"
    }:
    { config, lib, pkgs, ... }:
    let
      cfg = config.programs.dockapps.${name};
      shared = config.programs.dockapps.settings;

      mkOpt = optName: def: lib.mkOption {
        type = typeOf lib def.type;
        default = def.default;
        description = "${name} ${flagOf optName def} option (see `${name} --help`).";
      };

      sharedCliFlags = cliFlagsFrom lib sharedSpec shared;
      appConfLines = confLinesFrom lib spec cfg;
      appCliFlags = cliFlagsFrom lib spec cfg;

      wrapper = pkgs.writeShellScriptBin name ''
        exec ${cfg.package}/bin/${name} ${lib.escapeShellArgs (sharedCliFlags ++ appCliFlags ++ cfg.extraArgs)} "$@"
      '';

      extra = extraConfig { inherit cfg pkgs lib config; };
    in {
      imports = [ ./shared.nix ];

      options.programs.dockapps.${name} = {
        enable = lib.mkEnableOption description;

        package = lib.mkOption {
          type = lib.types.package;
          description = "The ${name} package to wrap.";
        };

        extraArgs = lib.mkOption {
          type = lib.types.listOf lib.types.str;
          default = [ ];
          description = "Extra CLI args appended after the module-generated flags.";
        };
      } // lib.mapAttrs mkOpt spec;

      config = lib.mkIf cfg.enable (lib.mkMerge [
        {
          xdg.configFile."dockapps/${name}.conf" = lib.mkIf (appConfLines != [ ]) {
            text = lib.concatStringsSep "\n" appConfLines + "\n";
          };

          home.packages = [ wrapper ];
        }
        extra
      ]);
    };
}
