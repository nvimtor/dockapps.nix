{
  dockappsSource,
  libdockapp4Source,
  nix-common,
  pkgs,
  ...
}: let
  inherit (nix-common.packageScope) mkPackageScope pkg input importPackages;

  packages = mkPackageScope {
    inherit pkgs;

    branch = {
      dockappsSource = input dockappsSource;
      # wmgrabimageSource = input wmgrabimageSource;
      libdockapp4Source = input libdockapp4Source;
      mkDockapp = pkg (import ./make-dockapp.nix);
    } // importPackages ./dockapps;
  };
in {
  inherit packages;
}
