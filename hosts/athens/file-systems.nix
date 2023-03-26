{ config, ...}:
{
  # Example of an unix file system
  # fileSystems."/media/unix-storage" = {
  #   device = "/dev/disk/by-uuid/55e3ba3a-6fc5-44a0-8135-3273b78515df";
  #   fsType = "ext4";
  # };

  # Example of a windows file system
  # fileSystems."/media/win-storage" = {
  #   device = "/dev/disk/by-uuid/a90883a2-0c19-4b80-8eaa-186c0395e2a1";
  #   fsType = "ntfs";
  # };
}