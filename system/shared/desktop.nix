{ config, pkgs, ...}:

{
  services.xserver = {
    enable = true;
    displayManager = {
      defaultSession = "none+xmonad";
      lightdm.enable = true;
    };
    windowManager = {
      xmonad = {
        enable = true;
        enableContribAndExtras = true;
        extraPackages = haskellPackages: [
          haskellPackages.xmonad-contrib
          haskellPackages.xmonad-extras
          haskellPackages.xmonad
          # haskellPackages.xmobar
        ];
      };
    };
    desktopManager = {
      lxqt.enable = true;
      gnome.enable = false;
      plasma5.enable = true;
    };

    layout = "us";
    xkbVariant = "colemak";
    xkbOptions = "caps:swapescape";
  };
}
