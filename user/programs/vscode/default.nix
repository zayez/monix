args@{ config, pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    extensions = import ./extensions.nix args;
    userSettings = import ./settings.nix args;
  };
}
