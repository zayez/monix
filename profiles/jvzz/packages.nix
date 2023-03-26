{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in
{
  home.packages = with pkgs; [

    # COMMUNICATION
    pkgs.signal-desktop
    pkgs.skypeforlinux
    pkgs.obs-studio


    # DESKTOP
    pkgs.betterlockscreen
    pkgs.conky
    pkgs.feh
    pkgs.maim
    pkgs.xssproxy
    pkgs.jgmenu


    # DESIGN / MODELING / IMAGE

    pkgs.gimp
    pkgs.inkscape
    pkgs.libheif

    # DEV

    # pkgs.dotnet-sdk_7
    pkgs.guake
    pkgs.sqlite
    pkgs.sqlitebrowser
    pkgs.omnisharp-roslyn
    pkgs.insomnia
    pkgs.robo3t
    pkgs.gnupg
    pkgs.openssh
    pkgs.gitflow


    # DOWNLOAD MANAGERS

    pkgs.nicotine-plus
    pkgs.qbittorrent
    pkgs.python39Packages.subliminal

    # TODO: Remove if unecessary
    # no idea of what this packages does
    pkgs.python39Packages.eyeD3


    # FILE MANAGEMENT

    pkgs.ranger
    pkgs.unzip
    pkgs.unrar
    pkgs.xclip
    pkgs.zip
    # pkgs.translate-shell
    # pkgs.xdotool


    # GAMES

    pkgs.retroarch


    # GTK

    pkgs.ant-theme
    pkgs.gnome.nautilus


    # INTERNET

    pkgs.google-chrome

    # LXQt

    pkgs.lxappearance

    # MISC

    pkgs.anki-bin
    pkgs.calibre
    pkgs.libnotify # for dunst
    pkgs.obsidian

    # MULTIMEDIA

    pkgs.audacity
    pkgs.cmus
    pkgs.ffmpeg-full
    pkgs.glyr # lyrics
    pkgs.playerctl
    pkgs.spotify
    pkgs.gtkpod
    pkgs.webcamoid
    pkgs.yt-dlp
    # (clementine.override { ipod = true;})

    # OFFICE

    pkgs.calc
    pkgs.libreoffice
    pkgs.okular


    # TERMINAL

    pkgs.cava
    pkgs.cmatrix
    pkgs.entr
    pkgs.gotop
    pkgs.killall
    pkgs.neofetch
    pkgs.pywal
    pkgs.zbar # zbarimg - for qrcode * otps codes etc
  ];
}
