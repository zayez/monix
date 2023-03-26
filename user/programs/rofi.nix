{ config, pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    font = "Iosevka 14";
    theme = "${config.home.homeDirectory}/.starfiles/themes/rofi/slate.rasi";
    terminal = "${pkgs.alacritty}/bin/alacritty";

    plugins = with pkgs; [
      rofi-calc
    ];

    extraConfig = {
      modi = "window,drun,run,ssh,combi";
      combi-modi = "window,drun,run";
      matching = "normal";
      sorting-method = "fzf";
      show-icons = true;
    };
  };
}