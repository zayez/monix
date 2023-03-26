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
    ./hardware-configuration.nix
    # /etc/nixos/hardware-configuration.nix
    # ./file-systems.nix
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



  # virtualisation
  virtualisation.libvirtd.enable = false;
  virtualisation.virtualbox.host.enable = true;
  virtualisation.virtualbox.host.enableExtensionPack = false;

  users.users.${user}.extraGroups = [ "wheel" "audio" "networkmanager" "vboxusers" "vboxsf" ];

}
