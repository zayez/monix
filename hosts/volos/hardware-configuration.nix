{
  modulesPath,
  ...
}:

{
  imports = [
    "${modulesPath}/installer/scan/not-detected.nix"
  ];

  # boot

  # boot.loader.grub.useOSProber = useOSProber;
  # boot.loader.grub.extraEntries = import ./multiboot.nix;
  boot.kernelModules = [ "kvm-amd" ];
  # boot.kernel.sysctl = { "net.ipv4.ip_forward" = 1; };

  fileSystems."/".device = "/dev/disk/by-label/nixos";
}