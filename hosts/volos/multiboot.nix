''

menuentry 'Windows 10 (on /dev/sdb2)' --class windows --class os $menuentry_id_option 'osprober-chain-6296682E9668053F' {
  insmod part_msdos
  insmod ntfs
  set root='hd1,msdos2'
  if [ x$feature_platform_search_hint = xy ]; then
    search --no-floppy --fs-uuid --set=root --hint-bios=hd1,msdos2 --hint-efi=hd1,msdos2 --hint-baremetal=ahci1,msdos2  6296682E9668053F
  else
    search --no-floppy --fs-uuid --set=root 6296682E9668053F
  fi
  parttool ''${root} hidden-
  drivemap -s (hd0) ''${root}
  chainloader +1
}

''