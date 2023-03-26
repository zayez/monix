{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;

  imports = [
    ./gui.nix
    ../programs/alacritty.nix
    ../programs/git.nix
    ../programs/password-store.nix
    ../programs/shells
    ../programs/vim.nix
    ../programs/vscode
    ../programs/tmux.nix
    ../programs/mpv.nix
    ../programs/rofi.nix
    ../programs/firefox
    ../programs/fzf.nix
    ../programs/zathura.nix
    ../services/picom.nix
    ../services/dunst.nix
    ../services/polybar.nix
    ../services/screen-locker.nix
    ../services/network-manager.nix
  ];


}