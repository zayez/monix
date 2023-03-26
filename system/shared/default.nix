{ config, ... }:

{
  imports =
  [
    ./desktop.nix
    ./fonts.nix
    ./system-packages.nix
    ../programs
    ../services
  ];
}
