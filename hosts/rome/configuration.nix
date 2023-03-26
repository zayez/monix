{ config, pkgs, ... }:

{
  imports =
    [ 
      # ../../hardware-configuration.nix # for vm installation
      # /etc/nixos/hardware-configuration.nix # for post-installation
      ./packages.nix
      ../common.nix
    ];

  i18n = {
    consoleKeyMap = "colemak";
    defaultLocale = "en_US.UTF-8";
  };

  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/sda"; 

  networking.hostName = "Netley"; 

  services.openssh.enable = true;
  services.xserver.enable = false;

  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_11;
  };

  users.users.net = {
    isNormalUser = true;
    home = "/home/net";
    extraGroups = [ "wheel" ];
  };

  ## SSH keys
  users.extraUsers.net.openssh.authorizedKeys.keys = [ "" ];
  
  system.stateVersion = "19.09"; 

}
