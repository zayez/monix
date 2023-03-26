{
  allowUnfree = true;

  # Enable NUR
  packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  };

  # Enable retroarch cores
  retroarch = {
    enableBeetlePCEFast = true;
    enableBeetlePSX = true;
    enableGenesisPlusGX = true;
    enableNestopia = true;
    enableQuickNES = true;
    enableReicast = true;
    enableSnes9x = true;
    enableSnes9xNext = true;
    # enable4do = true;
    # enableMAME = true;
    # enableMGBA = true;
    # enableMupen64Plus = true;
    # enableScummVM = true;
    # enableParallelN64 = true;
    # enablePPSSPP = true;
  };
}

