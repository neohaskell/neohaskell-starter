{ pkgs, lib, config, inputs, ... }:

{
  packages = with pkgs; [
    git
  ];

  scripts.neo-build.exec = "cabal build";
  scripts.neo-run.exec = "cabal run";

  enterShell = ''
    cabal update
  '';

  languages.nix.enable = true;
  languages.haskell.enable = true;
}
