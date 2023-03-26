args@{ config, lib, pkgs, ... }:
let
  user = "jvzz";
  name = "jvzz";
  keyboardLayout = "colemak";
  hostName = "V8AFX7501ZY";
  timeZone = "America/Sao_Paulo";
  useOSProber = false;

in
{
  imports =
  [
    ../../profiles/jvzz
    /etc/nixos/hardware-configuration.nix
    ./file-systems.nix
    (import ../../system/common.nix (args // { user = user; name = name; }))
    (import ../../system/shared (args // { user = user; name = name; }))
  ];

  console.keyMap = keyboardLayout;
  networking.hostName = hostName;
  time.timeZone = timeZone;

  # location
  location = {
    latitude = -30.03;
    longitude = -51.21;
  };

  # boot
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/sda";
  # boot.loader.grub.useOSProber = useOSProber;
  # boot.loader.grub.extraEntries = import ./multiboot.nix;
  boot.kernelModules = [ "kvm-amd" ];
  # boot.kernel.sysctl = { "net.ipv4.ip_forward" = 1; };

  # virtualisation
  virtualisation.libvirtd.enable = false;
  virtualisation.virtualbox.host.enable = true;
  virtualisation.virtualbox.host.enableExtensionPack = false;

  users.users.${user}.extraGroups = [ "wheel" "audio" "networkmanager" "vboxusers" "vboxsf" ];

}
