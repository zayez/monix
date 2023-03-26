# Introduction

This is a set of configurations for a NixOS-based operating system. In the future, multiple hosts and users should be available to choose from.
For now though, there's only two hosts and a single user but it will be easy to create new hosts and users based on the available modules.

## Setup

This project can be both used in a existing NixOS installation as in a new one

### New installation

To use this in a new NixOS installation:

```bash
cd /etc/mnt/nixos
git clone github.com/belsier/dotfiles
ln -s dotfiles/hosts/athens/default.nix configuration.nix
nixos-install
```

### Existing installation

For an existing installation:

```bash
git clone github.com/belsier/dotfiles
cd dotfiles
chmod u+x bootstrap.sh
./bootstrap.sh host-name profile-name
```

What `bootstrap` will do is this:

- Generate a new host based on the default (_athens_)
- Generate a new profile based on the default (_atticus_)
- Link the `scripts` directory the your _$HOME_ directory (as _$HOME/.scripts_)
- Link the newly created _host_ configuration of NixOS and the newly created _profile_ directory to _$HOME/.config/nixpkgs_
- Link the XMonad and the conky config.

## Multiboot

To enable support for multiboot, you need to set the attribute _useOSProber_ to true. You can find it in the default configuration of the choosen host.
After building the system with _OSProber_, you can use the generated grub configuration to import it directly using the _multiboot.nix_ file, this way you don't need to keep the OSProber active for every time you build your system.

## Structure

The basic directory structure of the project is described below.

```bash
├── bootstrap.sh
├── config
│   ├── conky
│   └── xmonad
├── docs
├── hosts
│   ├── athens
│   │   ├── default.nix
│   │   ├── desktop.nix
│   │   ├── file-systems.nix
│   │   ├── fonts.nix
│   │   ├── multiboot-template.nix
│   │   ├── multiboot.nix
│   │   └── system-packages.nix
│   └── rome
│       ├── configuration.nix
│       ├── file-systems.nix
│       └── packages.nix
├── profiles
│   └── atticus
│       ├── config.nix
│       ├── gui.nix
│       ├── home.nix
│       ├── overlays
│       └── packages.nix
├── scripts
├── system
│   ├── common.nix
│   ├── programs
│   │   ├── dconf.nix
│   │   └── gnupg.nix
│   ├── services
│   │   ├── dropbox.nix
│   │   ├── mongodb.nix
│   │   └── redshift.nix
│   └── shared.nix
├── themes
├── user
│   ├── programs
│   └── services
└── wallpaper
```

- `bootstrap.sh`: the install script.
- `config`: config directory.
- `docs`: cheat-sheets, docs, etc.
- `hosts`: the main configuration is choosen from one of the hosts.
- `profiles`: userland configuration modules.
- `scripts`: user scripts organized by type.
- `system`: system configuration modules.
- `themes`: themes for rofi and the like.
- `user`: user configuration modules.
- `wallpaper`: the system wallpaper.
