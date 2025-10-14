{ config, lib, pkgs, ... }:

{
  imports = [
    ./apps/programs.nix
    ./apps/audio.nix
    ./apps/image.nix
    ./apps/alacritty.nix
    ./apps/fastfetch.nix
    ./apps/firefox.nix
    ./apps/emacs.nix
    ./apps/dunst.nix
    ./apps/gnutils.nix
    ./apps/thunar.nix
    ./apps/torrent.nix
    ./apps/conky.nix
    ./apps/xorg.nix
    ./apps/kde.nix
    ./apps/obs.nix
    ./apps/chatting.nix
    ./apps/spotify.nix
    ./apps/gaming.nix

    ./apps/neovim.nix
    ./apps/zathura.nix
    ./apps/latex.nix
    ./apps/picom.nix
    ./apps/cava.nix
    ./apps/git.nix
    ./apps/yazi.nix

    ./shell/bat.nix
    ./shell/eza.nix
    ./shell/fzf.nix
    ./shell/starship.nix
    ./shell/tmux.nix
    ./shell/zoxide.nix
    ./shell/zsh.nix
    ./shell/cli.nix

    ./important/configs.nix
    ./important/theming.nix
  ];
}
