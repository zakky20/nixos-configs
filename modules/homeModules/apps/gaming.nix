{ config, lib, pkgs, ... }: {

   programs.mangohud.enable = true;

   home.packages = with pkgs; [
      steam
      steam-run
      steamtinkerlaunch
      prismlauncher
      gamescope
      mangohud
      heroic
      lutris
      er-patcher
      dxvk
   ];

}
