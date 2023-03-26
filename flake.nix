{
  description = "monix configuration";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs = { nixpkgs.follows = "nixpkgs"; };
    };
  };

  outputs = { self, home-manager, nixpkgs, ... }:
  let
    system = "x86_64-linux";
    user = "onion";
    host = "londo";

    pkgs = import nixpkgs {
      inherit system;
      config = { allowUnfree = true; };
    };

    lib = nixpkgs.lib;

  in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        inherit system;
        modules = [
          home-manager.nixosModules.home-manager
          (import (./hosts + "/${host}"))
        ];
      };
    };
  };
}
