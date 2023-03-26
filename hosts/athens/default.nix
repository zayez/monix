args@{ config, lib, pkgs, ... }:
let
  user = "atticus";
  name = "atticus";
  keyboardLayout = "colemak";
  hostName = "HK7RXNGKY2";
  timeZone = "America/Montevideo";
  useOSProber = false;
in
{
  imports =
  [
    /etc/nixos/hardware-configuration.nix
    ./file-systems.nix
    (import ../../system/common.nix (args // { user = user; name = name; }))
    (import ../../system/shared (args // { user = user; name = name; }))
  ];

  console.keyMap = keyboardLayout;
  networking.hostName = hostName;
  time.timeZone = timeZone;

  location = {
    latitude = -34.54;
    longitude = -56.11;
  };

  # boot
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = useOSProber;
  boot.loader.grub.extraEntries = import ./multiboot.nix;
  boot.kernelModules = [ "kvm-amd" ];

  # virtualisation
  virtualisation.libvirtd.enable = false;
  virtualisation.virtualbox.host.enable = true;
  virtualisation.virtualbox.host.enableExtensionPack = false;

  users.users.${user}.extraGroups = [ "wheel" "audio" "networkmanager" "vboxusers" "vboxsf" ];

}
