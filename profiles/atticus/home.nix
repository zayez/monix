{ config, pkgs, ... }:
let
  name = "atticus";
  user = "atticus";
in
{
  imports = [
    ../../user/shared
  ];

  home.username = user;
  home.homeDirectory = "/home/${user}";

}
