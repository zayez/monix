# Profiles

Profiles are like hosts, but at _user_ level. A profile will be responsible for setting configurations such as: graphical user interface, user packages, overlays as well as manage programs and services (at _user_ level).

Much like _hosts_, _profiles_ are about using one of the available _profiles_ as a **blueprint** to derivate another _profile_.
And like _hosts_, _profiles_ shouldn't be used directly. Instead, you should copy an available profile and use as a base for your own configuration.

## Atticus

**Atticus** is considered the _default_ profile of this project, its recommended to use it as the _blueprint_ for new profiles. The main module (_home.nix_) is located at the _profiles/atticus_ directory and you should set your username in this file.

The same principles used in the _hosts_ can be aplied here: Modules should be lean and composable.

### Default programs

A list of the default programs used for the main activities in the operating system.

|           Type | Program                                                       |
| -------------: | ------------------------------------------------------------- |
|         Editor | _[Vim](https://vim.org/)_                                     |
|       Launcher | _[Rofi](https://github.com/davatorium/rofi)_                  |
|          Shell | _[Fish](https://fishshell.com/)_                              |
|     Status bar | _[Polybar](https://polybar.github.io/)_                       |
|       Terminal | _[Alacritty](https://github.com/alacritty/alacritty)_         |
| Window manager | _[XMonad](https://xmonad.org/)_                               |
|  Screen locker | _[Betterlockscreen](github.com/pavanjadhaw/betterlockscreen)_ |

### Themes

List of the GTK themes used in the default configuration.

|           Type | Name                                                            |
| -------------: | --------------------------------------------------------------- |
|      GTK Theme | _[Dracula](https://github.com/dracula/gtk)_                     |
| GTK Icon Theme | _[WhiteSur](https://github.com/vinceliuice/WhiteSur-gtk-theme)_ |

### Installed packages

A list of all the user's installed packages via home-manager.

1. Comunication

   - signal-desktop

2. Desktop

   - betterlockscreen
   - conky
   - feh
   - maim
   - xssproxy

3. Design/Modeling

   - gimp
   - inkscape
   - dia

4. Development

   - sqlite
   - sqlitebrowser
   - vscode
   - insomnia
   - robo3t
   - gnupg
   - openssh

5. Download management

   - nicotine-plus
   - qbittorrent
   - youtube-dl

6. File management

   - ranger
   - unrar
   - unzip
   - xclip
   - zip

7. Gaming

   - retroarch

8. GTK

   - nautilus
   - ant-theme

9. Internet

   - google-chrome
   - firefox

10. LXQt

    - lxappearance

11. Miscelaneaus

    - anki
    - calibre
    - libnotify

12. Multimedia

    - audacity
    - cmus
    - glyr
    - ffmpug-full
    - playerctl
    - mpv
    - spotify

13. Office

    - calc
    - libreoffice
    - okular
    - zathura

14. Terminal

    - cava
    - cmatrix
    - entr
    - gotop
    - killall
    - neofetch
    - pywal
    - zbar
