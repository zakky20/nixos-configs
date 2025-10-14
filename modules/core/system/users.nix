{ config, lib, pkgs, ... }: {

users.users.zakky = {
  isNormalUser = true;
  extraGroups = [ "networkmanager" "wheel" "audio" "video" "disk" ];
  shell = pkgs.zsh;
  packages = with pkgs; [];
};

}
