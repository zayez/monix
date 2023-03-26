{config, pkgs, ...}:

{
  programs.alacritty = {
    enable = true;
  };

  programs.alacritty.settings = {
    env.TERM = "xterm-256color";
    shell = "${config.home.homeDirectory}/.nix-profile/bin/fish";
    window.padding = {
      x = 40;
      y = 20;
    };

    # Don't show any window decorations
    window.decorations = "none";
    live_config_reload = true;
    window.startup_mode = "Windowed";
    window.opacity = 0.9;

    scrolling = {
      history = 10000;
      multiplier = 3;
    };

    font = {
      size = 13;
      normal = {
        family = "Iosevka";
        style = "Regular";
      };
      bold = {
        family = "Iosevka";
        style = "Bold";
      };
      italic = {
        family = "Iosevka";
        style = "Italic";
      };
      bold_italic = {
        family = "Iosevka";
        style = "Bold Italic";
      };

      offset = {
        x = 1;
        y = 2;
      };
    };

    key_bindings = [
      {
        key = "Space";
        mods = "Control";
        action = "ToggleViMode";
      }
    ];
  };
}