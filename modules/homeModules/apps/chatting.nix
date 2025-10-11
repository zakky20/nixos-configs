{ config, lib, pkgs, ... }: {

   home.packages = with pkgs; [
      telegram-desktop
      vesktop
   ];

}
