{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    buildInputs = [
      pkgs.pandoc
      pkgs.fish
      pkgs.nodejs
      # pkgs.texlive.combined.scheme-small
      (pkgs.texlive.combine {
          inherit (pkgs.texlive)
          scheme-small
          newverbs
          framed
          titlesec
          enumitem;
      })
    ];
}
