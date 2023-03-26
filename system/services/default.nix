{ config, pkgs, ... }:

{
  imports =
  [
    # ./dropbox.nix
    ./mongodb.nix
    ./redshift.nix
  ];

  services = {
    greenclip.enable = true;
  };
}