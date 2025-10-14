{ config, lib, pkgs, ... }: {

   programs.mangohud.enable = true;

   home.packages = with pkgs; [
      steam
      steam-run
      steamtinkerlaunch
      prismlauncher
      gamescope
      heroic
      lutris
      er-patcher
      dxvk
   ];

}
