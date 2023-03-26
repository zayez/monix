{ config, pkgs, ... }:

{
  programs.mpv = {
    enable = true;
    scripts = with pkgs.mpvScripts; [ mpris ];
    config = {
      alang = "en";
      loop = "no";
      sub-visibility = "yes";
      save-position-on-quit = "yes";
      ytdl-format = "bestvideo+bestaudio";
    };
  };
}
