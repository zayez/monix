{ pkgs, lib, config, ... }:

let
  # unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };

  colors = {
    bg = "#121621";
    bg-alt = "#2D2C56";
    fg = "#f8f8f2";
    fg-alt = "#a4a4a4";
    major = "#2D2C56";
    minor = "#353465";
    accent = "#FC48AC";
    primary = "#13f01e";
    secondary = "#bd93f9";
    alert = "#f00";
    alert-dark = "#900000";
    yellow = "#f5a70a";
  };
in
{
  services.polybar = {
    enable = true;
    package = pkgs.polybar.override {
      i3GapsSupport = true;
      pulseSupport = true;
      githubSupport = true;
    };
    script = "polybar xmonad -r &";
    config = {
      "bar/xmonad" = {
        # monitor = "DisplayPort-2";
        width = "100%";
        height = 28;
        bottom = true;
        radius = 0;
        fixed-center = true;
        background = colors.bg;
        foreground = colors.fg;
        line-size = 0;
        line-color = colors.alert;
        border-color = colors.alert-dark;
        border-bottom-size = 0;
        padding-right = 0;
        padding-left = 1;
        module-padding-left = 2;

        font-0 = "MesloLGL Nerd Font Mono:size=15;4";
        font-1 = "inconsolata:size=7.5;3";
        font-2 = "unifont:fontformat=truetype:size=9:antialias=true;0";
        font-3 = "Iosevka:size=8;4";

        modules-left = "haskell-icon workspaces-xmonad";
        modules-center = "player-status";
        modules-right = "ar-major-bg pulseaudio ar-minor-major date ar-major-minor powermenu ar-minor-major";

        tray-position = "right";
        tray-padding = 1;
        tray-transparent = true;
        tray-background = colors.minor;
        pseudo-transparency = true;
        cursor-click = "pointer";
        cursor-scroll = "ns-resize";
      };

      "module/workspaces-xmonad" = {
        type = "custom/script";
        exec = "tail  -F /tmp/.xmonad-workspace-log";
        exec-if = "[ -p /tmp/.xmonad-workspace-log ]";
        tail = true;
        label-font = 4;
        label-active = 4;
      };

      # "module/player-status" = {
      #   type = "custom/script";
      #   exec = "${config.home.homeDirectory}/.scripts/player/player-status";
      #   interval = 2;
      #   label-maxlen = 60;
      #   label-font = 2;
      #   label-active = 2;
      # };

      "module/powermenu" = {
        type = "custom/menu";
        expand-right = "true";
        format-spacing = 0;
        label-open = "⏻";
        format-font = 2;
        format-label-background = colors.major;
        label-background = colors.major;
        format-background = colors.major;
        content-background = colors.minor;
        label-separator-background = colors.major;
        label-close-background = colors.major;
        background = colors.major;
        label-open-padding = 1;
        label-open-background = colors.major;
        label-open-foreground = colors.fg;
        # label-close = "%{T2}%{F#fe8019}✕%{F-}%{T-}";
        label-close = "%{F#fe8019}  ✕ %{F-}";
        label-close-foreground = "\${colors.secondary}";
        label-separator = " / ";
        label-separator-foreground = "\${colors.foreground}";

        menu-0-0 = "%{F${colors.fg-alt}}reboot%{F-}";
        menu-0-0-background = colors.major;
        menu-background = colors.major;
        menu-0-0-exec = "menu-open-1";

        menu-0-1 = "%{F#999999}power off%{F-}";
        menu-0-1-background = colors.major;
        menu-0-1-exec = "menu-open-2";

        menu-0-2 = "%{F#999999}lock%{F-}";
        menu-0-2-background = colors.major;
        menu-0-2-exec = "loginctl lock-session";

        menu-0-3 = "%{F#999999}suspend %{F-}";
        menu-0-3-background = colors.major;
        menu-0-3-exec = "systemctl suspend";

        menu-1-0 = "%{F#ff4000}yes%{F-}";
        menu-1-0-background = colors.major;
        menu-1-0-exec = "systemctl reboot";
        menu-1-1 = "%{F#999999}no%{F-}";
        menu-1-1-background = colors.major;
        menu-1-1-exec = "menu-close";

        menu-2-0 = "%{F#ff4000}yes%{F-}";
        menu-2-0-background = colors.major;
        menu-2-0-exec = "systemctl poweroff";
        menu-2-1 = "%{F#999999}no%{F-}";
        menu-2-1-background = colors.major;
        menu-2-1-exec = "menu-close";
      };



      "module/xkeyboard" = {
        type = "internal/xkeyboard";
        blacklist = [ "num lock" ];
        label-font = 2;
        label-active = 2;
        # format-prefix = "%{T2}%{T-}";
        # format-prefix-foreground = colors.accent;
        # format-prefix-background = colors.fg;
        # format-prefix-underline = colors.primary;

        label-layout = "%layout%";
        # label-layout-underline = colors.secondary;

        # label-indicator-padding = 2;
        # label-indicator-margin = 1;
        # label-indicator-background = colors.secondary;
        # label-indicator-underline = colors.secondary;
      };

      "module/date" = {
        type = "internal/date";
        interval = 5;
        date = "";
        date-alt = " %d/%m/%Y";
        time = " %H:%M";
        time-alt = " %I:%M %P";
        format-prefix-foreground = colors.fg;
        format-background = colors.minor;
        label = "%date% %time%";
        label-font = 2;
        format-padding = 1;
      };

      "module/pulseaudio" = {
        type = "internal/pulseaudio";
        format-volume = "<label-volume>";
        label-volume = "%{T2} %percentage%%%{T-}";
        label-font = 2;
        label-active = 2;
        label-volume-foreground = colors.fg-alt;
        label-volume-background = colors.major;
        label-volume-padding = 1;

        label-muted = "%{T2}婢 muted%{T-}";
        label-muted-padding = 1;
        label-muted-background = colors.major;
        label-muted-foreground = colors.fg-alt;
      };

      "module/ar-major-bg" = {
        type = "custom/text";
        content = "";
        label-font = 1;
        content-foreground = colors.major;
        content-background = colors.bg;
      };

      "module/ar-major-minor" = {
        type = "custom/text";
        content = "";
        label-font = 1;
        content-foreground = colors.major;
        content-background = colors.minor;
      };

      "module/ar-minor-major" = {
        type = "custom/text";
        content = "";
        label-font = 1;
        content-foreground = colors.minor;
        content-background = colors.major;
      };

      "module/haskell-icon" = {
        type = "custom/text";
        content = " ";
        label-font = 4;
        content-background = colors.bg;
        click-left = "jgmenu --at-pointer &";
      };

      "settings" = {
        screenchange-reload = true;
      };
    };
  };
  systemd.user.services.polybar.Service.Environment = lib.mkForce [
    "PATH=${config.home.profileDirectory}/bin:/run/current-system/sw/bin"
  ];
}