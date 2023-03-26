{ config, pkgs, ... }:

{
  imports =
  [
    ./dconf.nix
    ./gnupg.nix
  ];

  programs = {
    zsh.enable = true;
  };

  xdg.mime.defaultApplications = {
    "application/pdf" = "zathura.desktop";
    "video/mp4" = [ "mpv.desktop" "umpv.desktop" ];
  };

}
