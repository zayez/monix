# Warning:
# This is only an example. You should use the NixOS's OSProber
# to generate the menu entries and paste it into the multiboot.nix file.

''
menuentry 'Arch Linux (on /dev/sda2)' --class arch --class gnu-linux --class gnu --class os $menuentry_id_option 'osprober-gnulinux-simple-8a4c04de-cd09-4b2d-a921-a4cf2596948f' {
  insmod part_msdos
  insmod ext2
  set root='hd0,msdos2'
  if [ x$feature_platform_search_hint = xy ]; then
    search --no-floppy --fs-uuid --set=root --hint-bios=hd0,msdos2 --hint-efi=hd0,msdos2 --hint-baremetal=ahci0,msdos2  8a4c04de-cd09-4b2d-a921-a4cf2596948f
  else
    search --no-floppy --fs-uuid --set=root 8a4c04de-cd09-4b2d-a921-a4cf2596948f
  fi
  linux /boot/vmlinuz-linux root=UUID=8a4c04de-cd09-4b2d-a921-a4cf2596948f rw quiet
  initrd /boot/initramfs-linux.img
}

menuentry 'Windows 10 (on /dev/sdb2)' --class windows --class os $menuentry_id_option 'osprober-chain-9196d410-8c2b-4ab0-a0ba-6876258005e1' {
  insmod part_msdos
  insmod ntfs
  set root='hd1,msdos2'
  if [ x$feature_platform_search_hint = xy ]; then
    search --no-floppy --fs-uuid --set=root --hint-bios=hd1,msdos2 --hint-efi=hd1,msdos2 --hint-baremetal=ahci1,msdos2  9196d410-8c2b-4ab0-a0ba-6876258005e1
  else
    search --no-floppy --fs-uuid --set=root 9196d410-8c2b-4ab0-a0ba-6876258005e1
  fi
  parttool ''${root} hidden-
  drivemap -s (hd0) ''${root}
  chainloader +1
}
''