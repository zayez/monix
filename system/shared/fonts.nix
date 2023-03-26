{ config, pkgs, ...}:

{
  fonts = {
    enableDefaultFonts = true;
    fontDir.enable = true;
    enableGhostscriptFonts = true;
    fontconfig.enable = true;
    fonts = with pkgs; [
      alegreya
      alegreya-sans
      cabin
      crimson
      eb-garamond
      # ibm-plex
      jost
      lato
      libre-baskerville
      libre-bodoni
      libre-caslon
      libre-franklin
      merriweather
      merriweather-sans
      montserrat
      roboto
      vollkorn

      powerline-fonts
      (nerdfonts.override {
        fonts = [
          "FiraCode"
          "DroidSansMono"
          "Meslo"
          "Iosevka"
          "Inconsolata"
          "Monoid"
          "Hasklig"
        ];
      })
    ];
  };
}
