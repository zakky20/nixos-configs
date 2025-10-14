{ config, lib, pkgs, ... }: {
  
   home.packages = with pkgs; [
      anydesk
      libreoffice
      rofi
      nh
      nix-search-tv
   ];

}
