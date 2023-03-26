{ config, pkgs, ... }:

{
  programs.vim = {
    enable = true;

    settings = {
      tabstop = 2;
      shiftwidth = 2;
      number = true;
      expandtab = true;
    };

    plugins = [
      pkgs.vimPlugins.emmet-vim
      pkgs.vimPlugins.dracula-vim
      pkgs.vimPlugins.fzf-vim
      pkgs.vimPlugins.vim-rooter
      pkgs.vimPlugins.vim-colorschemes
      pkgs.vimPlugins.vim-airline
      pkgs.vimPlugins.vim-airline-themes
      pkgs.vimPlugins.vim-bufferline
    ];

    extraConfig = ''
      syntax enable
      " set textwidth=80 colorcolumn=+1

      set wrap
      set linebreak
      set textwidth=0
      set wrapmargin=0
      set formatoptions-=t

      " Show margin column
      set colorcolumn=80
      " packadd! dracula-vim | colorscheme dracula

      " Enable autoindent
      set ai

      " Enable options in editable files
      set modeline

      " Enable syntax higlighting
      syntax on

      " Show trailing whitespace characters
      set list
      set listchars=tab:>.,trail:.,extends:#,nbsp:.


      " No Vi stuff anymore
      set nocompatible

      let g:user_emmet_leader_key=','


      " FZF shortcuts
      nmap <C-p> :Files<CR>
      nmap <C-e> :Buffers<CR>
      let g:fzf_action = { 'ctrl-e': 'edit' }

      " Shortcuts

      " Save & quit
      inoremap <C-s> <esc>:w<cr>                 " save files
      nnoremap <C-s> :w<cr>
      inoremap <C-d> <esc>:wq!<cr>               " save and exit
      nnoremap <C-d> :wq!<cr>
      inoremap <C-q> <esc>:qa!<cr>               " quit discarding changes
      nnoremap <C-q> :qa!<cr>
    '';
  };
}
