{ config, pkgs, ... }:

let
  lockCmd = "${pkgs.betterlockscreen}/bin/betterlockscreen -l dim";
in
{
  services.screen-locker = {
    enable = true;

    # Lock after 15 minutes
    inactiveInterval = 45;

    # Lock command
    lockCmd = lockCmd;

    # lock before suspending/hibernating, see https://github.com/i3/i3lock/issues/207
    # xssLockExtraOptions = [ "--transfer-sleep-lock" ];
  };
}