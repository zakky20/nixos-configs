{ config, lib, pkgs, inputs, ... }: {

  imports = [
    ./apps/discord

    ./apps/programs.nix
    ./apps/audio.nix
    ./apps/image.nix
    ./apps/alacritty.nix
    ./apps/fastfetch.nix
    ./apps/rofi.nix
    ./apps/firefox.nix
    ./apps/dunst.nix
    ./apps/gnutils.nix
    ./apps/thunar.nix
    ./apps/torrent.nix
    ./apps/xorg.nix
    ./apps/kde.nix
    ./apps/obs.nix
    ./apps/mpv.nix
    ./apps/chatting.nix
    ./apps/spotify.nix
    ./apps/gaming.nix
    ./apps/nixvim.nix
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
