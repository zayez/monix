{ ... }:
{
  programs.zathura = {
    enable = true;
    options = {
      adjust-open = "width";
      continuous-hist-save = true;
      scroll-page-aware = true;
      page-padding = 1;
      selection-clipboard = "clipboard";
      statusbar-home-tilde = true;
      window-title-home-tilde = true;
      font = "Iosevka 8";
    };
    extraConfig = ''
      map , navigate previous
      map . navigate next
      map <Space> navigate next
      map <S-Space> navigate previous
      map K zoom in
      map J zoom out
      map u scroll half-up
      map d scroll half-down
      map D toggle_page_mode
    '';
  };
}
