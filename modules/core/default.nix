{ config, lib, pkgs, ... }:

{
  imports = [
    ./services/systemd.nix
    ./services/fstrim.nix
    ./services/udisks.nix
    ./services/dbus.nix
    ./services/dconf.nix
    ./services/polkit.nix
    ./services/gvfs.nix
    ./services/wine.nix
    ./services/displaymanager.nix
    ./services/xkb.nix
    ./services/xserver.nix

    ./system/documentation.nix
    ./system/sound.nix
    ./system/bluetooth.nix
    ./system/boot.nix
    ./system/fonts.nix
    ./system/kernel.nix
    ./system/locales.nix
    ./system/networking.nix
    ./system/nix.nix
    ./system/env.nix
    ./system/xdg.nix
    ./system/nvidia.nix
    ./system/shell.nix
    ./system/sudo.nix
    ./system/users.nix
  ];
}
