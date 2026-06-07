# nix eval --impure --file ./default.nix
let
  sources = import ./npins;

  pkgs = import sources.nixpkgs { };

  dockapps = import ../. {
    inherit pkgs;
    nix-common = import sources.nix-common;
    nix-package-module = import sources.nix-package-module;
    dockappsSource = sources.dockapps;
    libdockapp4Source = sources.libdockapp;
  };
in
dockapps.packages.cputnik
