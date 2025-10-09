{ config, lib, pkgs, ... }:

let

  configDirs = [
    "qtile"
    "alacritty"
    "rofi"
    "dunst"
    "btop"
    "nvim"
    "fastfetch"
    "bookmarks"
  ];
  
  mkConfigLink = name: {
    source = config.lib.file.mkOutOfStoreSymlink "/home/zakky/NixOS/config/${name}/";
    recursive = true;
  };

in

{
  xdg.configFile = builtins.listToAttrs (
    map (name: { name = name; value = mkConfigLink name; }) configDirs
  );

}
