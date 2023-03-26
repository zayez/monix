{ config, ...}:
{
  fileSystems."/virtualboxshare" = {
    fsType = "vboxsf";
    device = "vm-shared";
    options = [ "rw" ];
  };
}