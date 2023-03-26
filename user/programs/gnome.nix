{config, pkgs, ...}:

{
  dconf.settings = {
    "org/gnome/shell" = {
      always-show-log-out = true;
      disable-user-extensions = false;
      enabled-extensions = with pkgs; [
        gnomeExtensions.dash-to-dock.uuid
      ];
    };
  };
}