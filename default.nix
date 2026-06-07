{
  dockappsSource,
  libdockapp4Source,
  nix-common,
  nix-package-module,
  pkgs,
  ...
}: let
  inherit (pkgs) lib;

  npm = nix-package-module {
    name = "npm";
    inherit nix-common;
  };

  evaled = lib.evalModules {
    modules = [
      { _module.args = { inherit pkgs; }; }
      npm
      ./module.nix
    ];

    specialArgs = {
      inherit dockappsSource libdockapp4Source;
    };
  };

  packages = evaled.config.npm.packageOutputs.dockapps;
in {
  inherit packages;
}
