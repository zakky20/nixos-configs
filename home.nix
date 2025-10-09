{ config, lib, pkgs, inputs, ... }:

{
    home.username = "zakky";
    home.homeDirectory = "/home/zakky";
    home.stateVersion = "25.05";

    imports = [
      ./modules/homeModules
    ];

    xdg = {
      enable = true;
      userDirs = {
        enable = true;
        createDirectories = true;
      };
    };

    home.packages = with pkgs; [
      xdg-desktop-portal
      xdg-desktop-portal-gtk

      lm_sensors
      libnotify

      anydesk
      nwg-look
      lxappearance
      libreoffice
      alacritty
      rofi
      dunst
      picom
      pv
   ];
}
