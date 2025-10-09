{ config, lib, pkgs, ... }: {

programs.git = {
    enable = true;
    userName = "zakky20";
    userEmail = "niku.raul@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
} 
