{ config, pkgs, ... }:

{
  services.dropbox = {
    enable = true;
    path = "${config.home.homeDirectory}/stores/warehouse/Dropbox";
  };
}

