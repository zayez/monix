{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    termite
    tmux
    vim
    wget 
    nodejs-12_x 
    dotnet-sdk
  ];
  
  nixpkgs.config = {
    allowUnfree = true;
  };
  
  fonts.fonts = with pkgs; [
    fira-code
  ];
}