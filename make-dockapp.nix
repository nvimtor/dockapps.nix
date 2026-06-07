{
  dockappsSource,
  stdenv,
  libx11,
  libxpm,
  libxext,
  bash,
  libdockapp4,
  lib,
}:
args@{
  pname,
  meta,
  withLibdockapp ? true,
  sourceDir ? pname,
  srcSubdir ? "src",
  progName ? pname,
  extraDeps ? [ ],
  cflags ? [ ],
  hardeningDisable ? [ ],
  ...
}:
stdenv.mkDerivation (
  _finalAttrs:
  let
    inherit (lib) getExe;

    version = args.version or dockappsSource.revision;
  in
  {
    inherit
      pname
      version
      meta
      hardeningDisable
      ;

    src = "${dockappsSource}/${sourceDir}/${srcSubdir}";

    NIX_CFLAGS_COMPILE = lib.concatStringsSep " " cflags;

    nativeBuildInputs =
      [
        libx11
        libxpm
        libxext
      ]
      ++ (if withLibdockapp then [ libdockapp4 ] else [ ])
      ++ extraDeps;

    postPatch = ''
      substituteInPlace build.sh \
        --replace "/bin/bash" "${getExe bash}"
    '';

    buildPhase = ''
      runHook preBuild

      ./build.sh

      runHook postBuild
    '';

    installPhase = ''
      runHook preInstall

      install -Dm755 -t $out/bin/ ${progName}

      runHook postInstall
    '';
  }
)
