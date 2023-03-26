{ config, pkgs, ... }:

let

  mySettings = import ./settings.nix;
  myUserChrome = import ./userChrome.nix;
  myUserContent = import ./userContent.nix;

in
{
  programs.firefox = {
    enable = true;

    extensions = with pkgs.nur.repos.rycee.firefox-addons; [
      bitwarden
      cookie-autodelete
      darkreader
      multi-account-containers
      ublock-origin
      umatrix
    ];

    profiles = {
      home = {
        isDefault = true;
        settings = mySettings;
        userChrome = myUserChrome;
        userContent = myUserContent;
        path = "home";
        name = "home";
      };

      work = {
        id = 1;
        settings = mySettings;
        userChrome = myUserChrome;
        userContent = myUserContent;
        path = "work";
        name = "work";
      };

      personal = {
        id = 2;
        settings = mySettings;
        userChrome = myUserChrome;
        userContent = myUserContent;
      };

      surf = {
        id = 3;
        settings = mySettings;
        userChrome = myUserChrome;
        userContent = myUserContent;
        name = "surf";
        path = "surf";
      };

      junk = {
        id = 4;
        settings = mySettings;
        userChrome = myUserChrome;
        userContent = myUserContent;
        path = "junk";
        name = "junk";
      };

      private = {
        id = 5;
        settings = mySettings;
        userChrome = myUserChrome;
        userContent = myUserContent;
      };

    };
  };
}