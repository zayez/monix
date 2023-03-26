{config, pkgs, ...}:

{
  programs.powerline-go = {
    enable = true;
    settings = {
      hostname-only-if-ssh = true;
      condensed = true;
      cwd-max-depth = 2;
      cwd-mode = "plain";
      git-mode = "simple";
      mode = "patched";
      max-width = 50;

      modules = [
        "venv"
        "ssh"
        "cwd"
        "perms"
        "exit"
        "git"
        "nix-shell"
        "jobs"
        "root"
      ];
    };
  };
}