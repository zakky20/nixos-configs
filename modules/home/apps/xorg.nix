{ config, lib, pkgs, ... }: {

    home.packages = with pkgs; [
      xorg.libX11
      xorg.libXft
      xorg.libxcb
      xorg.libXinerama
      xorg.xinit
      xorg.xrandr
      xorg.xinput
    ];
}
