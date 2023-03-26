{
  modulesPath,
  ...
}:

{
  imports = [
    "${modulesPath}/installer/scan/not-detected.nix"
  ];

  # boot
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.devices = [ "/dev/sda" ];
  # boot.loader.grub.useOSProber = useOSProber;
  # boot.loader.grub.extraEntries = import ./multiboot.nix;
  boot.kernelModules = [ "kvm-amd" ];
  # boot.kernel.sysctl = { "net.ipv4.ip_forward" = 1; };

  fileSystems."/".device = "/dev/disk/by-label/nixos";
}