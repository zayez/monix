{ config, lib, pkgs, user, name, ... }:

{
  # default locale
  i18n = {
    defaultLocale = "en_US.UTF-8";
  };


  environment.sessionVariables = {
    DOTNET_ROOT = "${pkgs.dotnet-sdk_7}";
  };

  # sound
  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.support32Bit = true;
  hardware.opengl.driSupport32Bit = true;
  sound.enable = true;

  # networkmanager
  networking.networkmanager.enable = true;

  # users
  users.users.${user} = {
    group = "users";
    isNormalUser = true;
    home = "/home/${user}";
  };

  # default shell
  users.extraUsers.${user} = {
    shell = pkgs.zsh;
  };

  # system version
  system.stateVersion = "21.05";
}