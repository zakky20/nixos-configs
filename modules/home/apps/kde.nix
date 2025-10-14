{ config, lib, pkgs, ... }: {

   services.kdeconnect.enable = true;

   home.packages = with pkgs; [
      kdePackages.kdeconnect-kde
      kdePackages.kdenlive
   ];

}
