#!/bin/sh

cwd=$(pwd)

host=${1:-"argos"}
profile=${2:-"agathon"}


create_host () {
  cp "$cwd/hosts/athens" -r "hosts/$host"

  if [ $? -ne 0 ]
  then
    notify-send -u low -i "dialog-error" "[1/5] bootstrap" "Couldn't create the host"
    exit 1
  fi
  notify-send -u low -i "vcs-normal" "[1/5] bootstrap" "Host was successfully created"
}

create_profile () {
  cp "$cwd/profiles/atticus" -r "profiles/$profile"

  if [ $? -ne 0 ]
  then
    notify-send -u low -i "dialog-error" "[2/5] bootstrap" "Couldn't create the profile"
    exit 1
  fi
  notify-send -u low -i "vcs-normal" "[2/5] bootstrap" "Profile was successfully created"
}


link_scripts () {
  # link scripts
  ln -sfnv $cwd/scripts/ $HOME/.scripts

  if [ $? -ne 0 ]
  then
    notify-send -u low -i "dialog-error" "[3/5] bootstrap" "Couldn't link the scripts"
    exit 1
  fi

  # enables user's scripts
  chmod u+x $HOME/.scripts/actions/*

  # enables launchers & common scripts for wm
  chmod u+x $HOME/.scripts/power/*

  notify-send -u low -i "vcs-normal" "[3/5] bootstrap" "Scripts were successfully linked"
}

link_nixos () {
  # link host config
  sudo ln -sfnv "$cwd/hosts/$host/default.nix" "/etc/nixos/configuration.nix"

  if [ $? -ne 0 ]
  then
    notify-send -u low -i "dialog-error" "[4/5] bootstrap" "Couldn't link the NixOS host"
    exit 1
  fi

  # link profile config
  ln -sfnv "$cwd/profiles/$profile" "$HOME/.config/nixpkgs"

  if [ $? -ne 0 ]
  then
    notify-send -u low -i "dialog-error" "[4/5] bootstrap" "Couldn't link the NixOS profile"
    exit 1
  fi

  notify-send -u low -i "vcs-normal" "[4/5] bootstrap" "NixOS modules were successfully linked"
}

link_config () {
  # link xmonad config
  ln -sfnv $cwd/config/xmonad/ $HOME/.xmonad

  if [ $? -ne 0 ]
  then
    notify-send -u low -i "dialog-error" "[5/5] bootstrap" "Couldn't link XMonad config"
    exit 1
  fi

  # link conky config
  ln -sfnv $cwd/config/conky/ $HOME/.config/conky

  if [ $? -ne 0 ]
  then
    notify-send -u low -i "dialog-error" "[5/5] bootstrap" "Couldn't link Conky config"
    exit 1
  fi

  notify-send -u low -i "vcs-normal" "[5/5] bootstrap" "Config modules were successfully linked"
}

create_host
create_profile

