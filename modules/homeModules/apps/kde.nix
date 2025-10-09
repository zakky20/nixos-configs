{ config, lib, pkgs, ... }: {

   home.packages = with pkgs; [
      kdePackages.kdeconnect-kde
      kdePackages.kdenlive
   ];

}
