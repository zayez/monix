{ config, pkgs, ... }:

{
  programs.fish = {
    enable = true;

    interactiveShellInit = ''

      fish_add_path ${config.home.homeDirectory}/.scripts/actions
      fish_add_path ${config.home.homeDirectory}/.dotnet/tools
      set -g fish_greeting ""
      fish_vi_key_bindings
      set EDITOR vim
      cat ~/.cache/wal/sequences
      abbr v "$EDITOR"
      abbr e "$EDITOR"
    '';
  };

  imports = [
    ./functions.nix
    ./shell-aliases.nix
    ./shell-abbrs.nix
  ];
}