{ config, pkgs, ... }:

let
  theme = {
    dunst = {
      low = {
        background = "#121621";
        foreground = "#888888";
        frame_color = "#FFFFFF";
        icon = "actions/dialog-information";
      };
      normal = {
        background = "#2D2C56";
        foreground = "#ffffff";
        frame_color = "#ffffff";
        icon = "actions/dialog-information";
      };
      critical = {
        background = "#FC48AC";
        foreground = "#ffffff";
        frame_color = "#FFFFFF";
        icon = "actions/dialog-error";
      };
    };
  };

in

{
  services.dunst.enable = true;
  services.dunst.iconTheme = {
    # name = "Papirus-Dark";
    name = "Papirus";
    package = pkgs.papirus-icon-theme;
    size = "32x32";
  };

  services.dunst.settings = {
    global = {
      # monitor = 0;
      follow = "mouse";
      geometry = "300x5-10+70";
      indicate_hidden = true;
      shrink = true;
      transparency = 20;

      notification_height = 0;
      separator_height = 1;
      padding = 20;
      horizontal_padding = 10;

      frame_color = "#AAAAAA";
      frame_width = 1;
      separator_color = "auto";
      sort = true;
      idle_threshold = 120;

      font = "Fira Code 10";
      line_height = 3;
      markup = "full";
      format = "<b>%s</b>\\n%b";
      alignment = "left";

      show_age_threshold = 60;
      word_wrap = true;
      ellipsize = "middle";
      ignore_newline = true;
      stack_duplicates = true;
      hide_duplicate_count = false;
      show_indicators = false;
      icon_position = "left";
      sticky_history = false;
      history_length = 15;
      title = "Dunst";
      class = "Dunst";

      notification_limit = 4;
      corner_radius = 4;

      min_icon_size = 32;
      max_icon_size = 32;
      offset = "20x20";

      mouse_left_click = "close_current";
      mouse_middle_click = "do_action, close_current";
      mouse_right_click = "close_all";

      # dmenu = "${pkgs.wofi}/bin/wofi -p dunst -dmenu";
      # browser = "${pkgs.firefox}/bin/firefox --new-tab";

      # vertical_alignment = "top";
      # origin = "top-center";
      # height = "(70, 250)";
      # width = "350";

    };

    urgency_low = {
      background = theme.dunst.low.background;
      foreground = theme.dunst.low.foreground;
      frame_color = theme.dunst.low.frame_color;
      icon = theme.dunst.low.icon;
      timeout = 10;
    };
    urgency_normal = {
      background = theme.dunst.normal.background;
      foreground = theme.dunst.normal.foreground;
      frame_color = theme.dunst.normal.frame_color;
      icon = theme.dunst.normal.icon;
      timeout = 10;
    };
    urgency_critical = {
      background = theme.dunst.critical.background;
      foreground = theme.dunst.critical.foreground;
      frame_color = theme.dunst.critical.frame_color;
      icon = theme.dunst.critical.icon;
      timeout = 10;
    };
  };
}