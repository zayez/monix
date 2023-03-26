{ config, pkgs, ... }:

{
  programs.fish.shellAbbrs = {

    # home-manager commands
    hs="home-manager switch";
    he="home-manager expire-generations";

    # nix commands

    ni="nix-env -iA";   # Install package
    nq="nix-env -qaP";  # Seach package
    ne="nix-env -e";    # Remove package
    nu="nix-env -u";    # Update package(s)

    # custom system scripts

    nsc="$HOME/.scripts/system/nixos-cleanup";
    nsu="$HOME/.scripts/system/nixos-update";
    nss="$HOME/.scripts/system/nixos-switch";

    # basic commands

    l="ls";
    ll="ls -la";
    c="clear";
    cc="cp";

    # programs

    yt="yt-dlp";

    ## virtualbox
    vb="VBoxManage";
    vbl="VBoxManage list vms";
    vbs="VBoxManage startvm";
    vbc="VBoxManage controlvm";
    # vbp="VBoxManage controlvm MyVM poweroff" # Power off VM

    # Personal scripts

    j="journal";
  };
}
