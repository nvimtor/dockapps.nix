{ dockappsSource, libdockapp4Source, ... }:
{ config, ... }: let
  inherit (config) npm;
in {
  npm.packages.dockapps-nix.dockapps = {
    dockappsSource = npm.lib.input dockappsSource;
    # wmgrabimageSource = npm.lib.input wmgrabimage;
    libdockapp4Source = npm.lib.input libdockapp4Source;
    mkDockapp = npm.lib.pkg (import ./make-dockapp.nix);
  } // npm.lib.importPackages ./dockapps;

  # npm.packages.mkIcon = npm.lib.pkg (import ./mk-icon.nix);
}
