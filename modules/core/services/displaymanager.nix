{ config, lib, pkgs, ... }: {

   services.xserver.displayManager.lightdm.enable = false;

   services.displayManager.ly = {
      enable = true;
      
      settings = {
         allow_empty_password = true;
         clear_password = true;
         auth_fails = 5;
      };
   };
}
