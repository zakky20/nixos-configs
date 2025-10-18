{ config, lib, pkgs, inputs, nixvim, ... }:

{
    home.username = "zakky";
    home.homeDirectory = "/home/zakky";
    home.stateVersion = "25.05";

    imports = [
      ./modules/home
      nixvim.homeModules.nixvim
    ];

    xdg.configFile."qtile".force = true;

    xdg = {
      enable = true;
      userDirs = {
        enable = true;
        createDirectories = true;
      };
    };
}
