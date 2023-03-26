{ config, pkgs, ... }:
let
  name = "jvzz";
  user = "jvzz";
in
{
  imports = [
    ../../user/shared
  ];

  home.username = user;
  home.homeDirectory = "/home/${user}";
  home.stateVersion = "22.11";

}
