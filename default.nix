{
  nix-package-module,
  dockappsSource,
  libdockapp4Source,
  pkgs,
  ...
}: let
  inherit (pkgs) lib;

  npm = nix-package-module {
    name = "npm";
  };

  evaled = lib.evalModules {
    modules = [
      npm
      (import ./module.nix { inherit dockappsSource libdockapp4Source; })
    ];
  };

  packages = evaled.config.npm.packageOutputs.dockapps-nix.dockapps;
in {
  inherit packages;
}
