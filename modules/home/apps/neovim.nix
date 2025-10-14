{ config, lib, pkgs, ... }: {

   programs.neovim = {
      enable = true; 
   };

   home.packages = with pkgs; [
      nixpkgs-fmt
      nixd
      alejandra
      tree-sitter
      ripgrep
      nodejs
      rustup
      xclip
      lua
      lua-language-server
      luarocks
      ruby
      rubyfmt
      python3
      go
      vscode-langservers-extracted
      nodePackages.typescript-language-server
      nil
      gcc
      ninja
      libverto
      sqlite
      aspell
      shellcheck
      imagemagick
      wmctrl
      hugo
   ];

}
