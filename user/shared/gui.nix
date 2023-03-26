{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
  homeDir = config.home.homeDirectory;

  whiteSurTheme = {
    name = "WhiteSur-dark-alt-purple";
    package = unstable.whitesur-gtk-theme;
  };
  draculaTheme = {
    name = "Dracula";
    package = pkgs.dracula-theme;
  };

  myTheme = draculaTheme;

  whiteSurIconTheme = {
    name = "WhiteSur-dark";
    package = unstable.whitesur-icon-theme;
  };

  myIconTheme = whiteSurIconTheme;
in
{
  gtk = {
    enable = true;
    font.name = "Iosevka 10";
    iconTheme = myIconTheme;
    theme = myTheme;

    gtk4 = {
      extraConfig = {
        gtk-theme-name = myTheme.name;
        gtk-application-prefer-dark-theme = true;
      };
    };

    gtk3 = {
      bookmarks = [
        "file:///${homeDir}/stores/warehouse/Dropbox"
        "file:///${homeDir}/Books"
      ];

      extraConfig = {
        gtk-application-prefer-dark-theme = true;
        gtk-cursor-theme-name = myTheme.name;
        gtk-theme-name = myTheme.name;
        gtk-toolbar-style = "GTK_TOOLBAR_BOTH";
        gtk-toolbar-icon-size = "GTK_ICON_SIZE_LARGE_TOOLBAR";
        gtk-button-images = 1;
        gtk-menu-images = 1;
        gtk-enable-event-sounds = 1;
        gtk-enable-input-feedback-sounds = 1;
        gtk-xft-antialias = 1;
        gtk-xft-hinting = 1;
        gtk-xft-hintstyle = "hintfull";
        gtk-xft-rgba = "rgb";
      };
    };

    gtk2.extraConfig = ''
      gtk-application-prefer-dark-theme=true
      gtk-cursor-theme-name="${myTheme.name}"
      gtk-theme-name = "${myTheme.name}";
    '';
  };

  qt = {
    enable = true;
    platformTheme = "gtk";
  };
}