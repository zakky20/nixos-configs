{ config, lib, pkgs, inputs, ... }:

{
    home.username = "zakky";
    home.homeDirectory = "/home/zakky";
    home.stateVersion = "25.05";

    imports = [
      ./modules/home
    ];

    xdg = {
      enable = true;
      userDirs = {
        enable = true;
        createDirectories = true;
      };
    };
}
