{ config, lib, pkgs, ... }:

let
  dockappLib = import ./lib.nix;
  inherit (dockappLib) sharedSpec confLinesFrom flagOf typeOf;

  cfg = config.programs.dockapps.settings;

  mkOpt = name: def: lib.mkOption {
    type = typeOf lib def.type;
    default = def.default;
    description = "Shared dockapp ${flagOf name def} option, applied to every enabled dockapp.";
  };

  confLines = confLinesFrom lib sharedSpec cfg;
in {
  options.programs.dockapps.settings = lib.mapAttrs mkOpt sharedSpec;

  config = {
    xdg.configFile."dockapps/general.conf" = lib.mkIf (confLines != [ ]) {
      text = lib.concatStringsSep "\n" confLines + "\n";
    };
  };
}
