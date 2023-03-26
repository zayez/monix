{ config, ...}:
{
  imports = [
      # note: this format can't be used with flakes, because it pulls from
      # NIX_PATH, which is impure, and dis-allowed with flakes.
      # Use the format shown in the line below it.

      #<nixpkgs/nixos/modules/installer/scan/not-detected.nix>

      "${modulesPath}/installer/scan/not-detected.nix"
    ];
  fileSystems."/".device = "/dev/disk/by-label/nixos";
  # fileSystems."/" = {
    # device = "/dev/disk/by-label/nixos";
    # fsType = "ext4";
    # options = [ "noatime" "nodiratime" ]; # ssd
  # };
  # fileSystems."/media/warehouse" = {
  #   device = "/dev/disk/by-uuid/159b0eeb-b035-4443-b338-249ec218a8ca";
  #   fsType = "ext4";
  # };

  # fileSystems."/media/storehouse" = {
  #   device = "/dev/disk/by-uuid/D430F09630F080B2";
  #   fsType = "ntfs";
  # };
}