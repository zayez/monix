# User

## Configuration

The user configuration is defined by a specified profile.
The default profile of this system is **atticus**.
The profile is responsible for setting configurations such as: graphical user interface, user packages and overlays.

The user configuration will enable services and programs at _user_ level.

## Programs

User programs are only available for a specific user of the system.

### Firefox

Firefox is the default browser of the system. The firefox module provides a variety of improvements over the standard installation such as: robust settings, celebrated extensions, multiple profiles and visual adjustments to the Proton interface.

#### Settings

You don't have to worry about messing with the _about:config_ no more.
The firefox module comes with sane default settings like: privacy, disabling telemetry, block requests asking to access your device and much more.

#### Extensions

The firefox module also includes a couple of extensions by default. You can see the list below.

- bitwarden
- cookie-autodelete
- darkreader
- multi-account-containers
- ublock-origin
- umatrix

#### Profiles

Available profiles are:

- home
- surf
- personal
- work
- private

### Shells

Shells is a collection of modules related to shell.

#### Fish

Fish comes with vi mode enabled by default, a collection of abbreviations and a aliases.

#### Starship

The minimal, blazing-fast, and infinitely customizable prompt for any shell!

#### Zsh

The Z shell is the default unix shell of the system. The module enables oh-my-zsh by default.

### Visual Studio Code

Visual Studio Code is a source-code editor made by Microsoft. The module comes with a list of extensions and a set of user settings by default.

### Other programs

- `Alacritty`: a free and open-source GPU accelerated terminal emulator focused on performance and simplicity. The module comes with a set of configurations, such as setting **fish** as its default shell.

- `fzf`: fzf is a general-purpose command-line fuzzy finder.

- `git`: a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.

- `mpv`: a free media player for the command line. It supports a wide variety of media file formats, audio and video codecs, and subtitle types.

- `pass`: The standard Unix password manager.

- `Rofi`: a window switcher, run dialog, ssh-launcher and dmenu replacement. It is the standard application launcher of the system. The module uses the **slate** theme.

- `tmux`: a terminal multiplexer for Unix-like operating systems.

- `vim`: The ubiquitous text editor.

- `zathura`: a highly customizable document viewer with vi-styled keybindings.

## Services

User services are services managed by _systemd_. The default user will enable a couple of services by default.

Below is a list of available services:

- `Dunst`: a lightweight replacement for the notification daemons provided by most desktop environments.

- `NetworkManager`: a system network service that manages your network devices and connections and attempts to keep network connectivity active when available.

- `Picom`: a standalone compositor for Xorg, suitable for use with window managers that do not provide compositing.

- `polybar`: A fast and easy-to-use status bar.

- `screen-locker`: a module that uses the program _betterlockscreen_ to manage screen-locking.
