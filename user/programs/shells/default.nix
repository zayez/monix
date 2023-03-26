{config, pkgs, ...}:

{
  imports = [
    ./fish
    ./zsh.nix
    ./starship.nix
  ];
}