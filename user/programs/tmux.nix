{ config, pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    shortcut = "a";
    newSession = true;
    baseIndex = 1;
    clock24 = true;
    historyLimit = 10000;
    keyMode = "vi";
    terminal = "tmux-256color";
    shell = "${pkgs.fish}/bin/fish"; # needs to restart to take effect
    
    plugins = [
      pkgs.tmuxPlugins.resurrect
    ];

    extraConfig = ''
    '';
  };
}