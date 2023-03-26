{config, pkgs, ...}:

{
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      add_newline = false;
      line_break.disabled = false;

      character = {
        success_symbol = "[𝝺](#c792ea)";
        vicmd_symbol = "[ ](bold green)";
        error_symbol = "[☓ ](bold red)";
      };

      directory = {
        style = "bold cyan";
        # fish_style_pwd_dir_length = 1; # turn on fish directory truncation
        # truncation_length = 2; # number of directories not to truncate
      };

      nix_shell = {
        disabled = false;
        symbol = " ";
        pure_msg = "pure";
        impure_msg = "impure";
        format = "via [$symbol$state]($style) ";
      };

      dotnet.disabled = true;
      hostname = {
        ssh_only = true;
        disabled = false;
      };

      aws.disabled = true;
      battery.disabled = true;
      cmake.disabled = true;
      cmd_duration.disabled = true;
      conda.disabled = true;
      crystal.disabled = true;
      dart.disabled = true;
      deno.disabled = true;
      docker_context.disabled = true;
      elixir.disabled = true;
      elm.disabled = true;
      erlang.disabled = true;
      gcloud.disabled = true;
      golang.disabled = true;
      helm.disabled = true;
      java.disabled = true;
      jobs.disabled = false;
      julia.disabled = true;
      kotlin.disabled = true;
      kubernetes.disabled = true;
      lua.disabled = true;
      nim.disabled = true;
      ocaml.disabled = true;
      openstack.disabled = true;
      perl.disabled = true;
      php.disabled = true;
      purescript.disabled = true;
      python.disabled = true;
      red.disabled = true;
      ruby.disabled = true;
      rust.disabled = true;
      scala.disabled = true;
      singularity.disabled = true;
      swift.disabled = true;
      terraform.disabled = true;
      vagrant.disabled = true;
      zig.disabled = true;

      # package.disabled = true;
    };
  };
}
