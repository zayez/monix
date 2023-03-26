{ config, pkgs, ... }:

{
  services.picom = {
    # inactiveDim = "0.2";
    # inactiveOpacity = "0";
    enable = true;
    backend = "glx";
    activeOpacity = 1; #"0.90";
    fade = true;
    fadeDelta = 4 ;
    fadeSteps = [0.02 0.02];
    shadow = true;
    vSync = true;
    opacityRules = [
      "90:class_g = 'Termite'"
      "90:class_g = 'alacritty'"
      "90:class_g = 'Org.gnome.Nautilus'"
      "90:class_g = 'Rofi'"
      "90:class_g = 'Dunst'"
      # "97:class_g = 'Firefox'"
      "98:class_g = 'Code'"
    ];
    settings = {
      # blur = {
      #   method = "dual_kawase";
      #   strength = 10;
      #   kern = "";
      #   background = true;
      #   background-exclude = [
      #     "class_g = 'URxvt'"
      #     "class_g = 'Firefox'"
      #   ];
      # };
    };
  };
}