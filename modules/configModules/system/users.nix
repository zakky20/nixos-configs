{ config, lib, pkgs, ... }: {

users.users.zakky = {
  isNormalUser = true;
  extraGroups = [ "networkmanager" "wheel" "audio" "video" "disk" "libvirtd" ];
  shell = pkgs.zsh;
  packages = with pkgs; [];
};

}
