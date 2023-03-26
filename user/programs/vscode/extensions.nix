{ pkgs, ... }:

with pkgs;
with vscode-extensions; [

  # markdown
  shd101wyy.markdown-preview-enhanced

  # syntax
  skyapps.fish-vscode
  bbenoist.nix
  justusadam.language-haskell

  # dx
  vscodevim.vim
  esbenp.prettier-vscode
  naumovs.color-highlight
  vincaslt.highlight-matching-tag
  humao.rest-client

  # themes
  dracula-theme.theme-dracula
  pkief.material-icon-theme

  # icons
  emmanuelbeziat.vscode-great-icons


  ms-dotnettools.csharp
] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [

  # DX

  # {
  #   name = "better-comments";
  #   publisher = "aaron-bond";
  #   version = "2.1.0";
  #   sha256 = "0kmmk6bpsdrvbb7dqf0d3annpg41n9g6ljzc1dh0akjzpbchdcwp";
  # }

  {
    name = "es7-react-js-snippets";
    publisher = "dsznajder";
    version = "4.4.3";
    sha256 = "1xyhysvsf718vp2b36y1p02b6hy1y2nvv80chjnqcm3gk387jps0";
  }


  # themes

  {
    name = "vscode-theme-onedark";
    publisher = "akamud";
    version = "2.2.3";
    sha256 = "1m6f6p7x8vshhb03ml7sra3v01a7i2p3064mvza800af7cyj3w5m";
  }

  # snippets

  {
    name = "simple-react-snippets";
    publisher = "burkeholland";
    version = "1.2.6";
    sha256 = "03pas6jc5j86w4z9a0bfggpcilkkpkrcgnkijjc30a3kmv5w9lng";
  }

  # syntax

  {
    name = "postcss-language";
    publisher = "mhmadhamster";
    version = "2.1.0";
    sha256 = "0g9h6asljdvgnbjf4fhagc2l7llz33baszrzn5k80802yy3lzsfl";
  }

  # remote

  # {
  #   name = "remote-containers";
  #   publisher = "ms-vscode-remote";
  #   version = "0.189.0";
  #   sha256 = "00mn0ad8x5jjga6v4q31bslb5li9w01n6p9zx0mzzpxhbbl3ajna";
  # }

  # {
  #   name = "remote-ssh";
  #   publisher = "ms-vscode-remote";
  #   version = "0.65.7";
  #   sha256 = "10ynl4pzlxy2k8f2zk3nfkp81br12a2aa6hzpd3zfnpwg6zc91mf";
  # }

  # {
  #   name = "remote-ssh-edit";
  #   publisher = "ms-vscode-remote";
  #   version = "0.65.7";
  #   sha256 = "1q5x6ds2wlg3q98ybvic00j19l33pablx7wczywa7fc26f8h9xzj";
  # }

  # {
  #   name = "remote-wsl";
  #   publisher = "ms-vscode-remote";
  #   version = "0.58.2";
  #   sha256 = "0fa1j592z7p7zv4acwpy4fn5fdjb6lz2sajcl78rzdva35qynw3i";
  # }

  # {
  #   name = "vscode-remote-extensionpack";
  #   publisher = "ms-vscode-remote";
  #   version = "0.21.0";
  #   sha256 = "14l8h84kvnkbqwmw875qa6y25hhxvx1dsg0g07gdl6n8cv5kvy2g";
  # }
]