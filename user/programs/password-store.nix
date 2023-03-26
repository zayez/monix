{config, pkgs, ...}:

{
  programs.password-store = {
    enable = true;
    package = pkgs.pass.withExtensions (es: with es; [
      pass-otp
    ]);
    settings = {
      PASSWORD_STORE_DIR = "$HOME/.password-store";
    };
  };
}