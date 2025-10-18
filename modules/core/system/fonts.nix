{ config, lib, pkgs, ... }: {

  fonts.packages = with pkgs; [
    nerd-fonts.iosevka
    noto-fonts-cjk-sans
    noto-fonts 
  ];

}
