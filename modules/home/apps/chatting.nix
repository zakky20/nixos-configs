{ config, lib, pkgs, ... }: {

   home.packages = with pkgs; [
      vesktop
      telegram-desktop
      thunderbird
   ];

}
