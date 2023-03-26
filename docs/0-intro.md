---
title: .dotfiles Documentation
author: belsier
numbersections: true
---

# Introduction

This is a set of configurations for a NixOS-based operating system. In the future, multiple hosts and users should be available to choose from.
For now though, there's only two hosts and a single user but it will be easy to create new hosts and users based on the available modules.

## Setup

This project can be both used in a existing NixOS installation as in a new one.

To use this in a new NixOS installation:

```bash
cd /etc/mnt/nixos
git clone github.com/belsier/dotfiles
ln -s dotfiles/hosts/athens/default.nix configuration.nix
nixos-install
```

## Configuration

For now, some adicional steps are needed to complete the configuration, mainly setting some symlinks and enabling execution of a couple of scripts. This can be done using the **bootstrap.sh** script.

```bash
cd dotfiles
chmod u+x bootstrap.sh
./bootstrap.sh
chmod u-x bootstrap.sh
```

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
