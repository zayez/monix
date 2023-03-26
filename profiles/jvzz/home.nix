{ config, pkgs, ... }:
let
  name = "jvzz";
  user = "jvzz";
in
{
  imports = [
    ../../user/shared
    # ./packages.nix
  ];

  home.username = user;
  home.homeDirectory = "/home/${user}";
  home.stateVersion = "22.11";

}
