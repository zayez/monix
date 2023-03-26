{config, pkgs, ...}:

{
  programs.zsh = {
    enable = true;

    oh-my-zsh.enable = true;
    oh-my-zsh.plugins = [
      "git"
      "man"
    ];
    oh-my-zsh.theme = "agnoster";

    enableAutosuggestions = true;
    enableCompletion = true;
    # enableSyntaxHighlighting = true;
    # initExtra = ''
    # '';

    # shellAliases = {
    # };
  };
}