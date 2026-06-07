{
  dockappsSource,
  libdockapp4Source,
  nix-common,
  pkgs,
  ...
}: let
  inherit (nix-common.packageScope) mkPackageScope pkg input importPackages;
  inherit (pkgs) lib;

  packages = mkPackageScope {
    inherit pkgs;

    branch = {
      dockappsSource = input dockappsSource;
      # wmgrabimageSource = input wmgrabimageSource;
      libdockapp4Source = input libdockapp4Source;
      mkDockapp = pkg (import ./make-dockapp.nix);
    } // importPackages ./dockapps;
  };

  dockappLib = import ./home-manager-modules/lib.nix;

  appModules = {
    dwgo = ./home-manager-modules/dwgo.nix;
    wmsun = ./home-manager-modules/wmsun.nix;
    wmtz = ./home-manager-modules/wmtz.nix;
    wmweather = ./home-manager-modules/wmweather.nix;
  };

  # NOTE wrap each app module so its `package` defaults to the dockapp we build
  withDefaultPackage = name: module: {
    imports = [ module ];
    config.programs.dockapps.${name}.package = lib.mkDefault packages.${name};
  };

  perApp = lib.mapAttrs withDefaultPackage appModules;

  homeManagerModules = perApp // {
    default.imports = lib.attrValues perApp;
  };
in {
  inherit packages homeManagerModules;
  lib = dockappLib;
}
