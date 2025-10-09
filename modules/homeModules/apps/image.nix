{ config, lib, pkgs, ... }: {

   home.packages = with pkgs; [
      feh
      # maim
      scrot
      nitrogen
      gimp
      inkscape
      upscayl
   ];
}
