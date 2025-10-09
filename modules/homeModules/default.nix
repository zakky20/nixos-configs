{ config, lib, pkgs, ... }:

{
  imports = [
    ./apps/audio.nix
    ./apps/image.nix
    ./apps/fastfetch.nix
    ./apps/firefox.nix
    ./apps/neovim.nix
    ./apps/git.nix
    ./apps/cli.nix
    ./apps/cava.nix
    ./apps/gnutils.nix
    ./apps/picom.nix
    ./apps/thunar.nix
    ./apps/torrent.nix
    ./apps/xorg.nix
    ./apps/kde.nix
    ./apps/obs.nix
    ./apps/chatting.nix
    ./apps/zathura.nix
    ./apps/latex.nix
    ./apps/spicetify.nix
    ./apps/gaming.nix

    ./shell/bat.nix
    ./shell/eza.nix
    ./shell/fzf.nix
    ./shell/starship.nix
    ./shell/tmux.nix
    ./shell/zoxide.nix
    ./shell/zsh.nix

    ./important/configs.nix
    ./important/theming.nix
  ];
}
