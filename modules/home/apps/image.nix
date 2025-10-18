{ config, lib, pkgs, ... }: {

   home.packages = with pkgs; [
      feh
      scrot
      nitrogen
      gimp
      upscayl
      ueberzug
   ];
}
