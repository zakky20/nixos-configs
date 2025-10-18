{ config, lib, pkgs, ... }: {

programs.git = {
    enable = true;
    userName = "zakky20";
    userEmail = "niku.raul@gmail.com";
    extraConfig = {
      credential.helper = "store";
      init.defaultBranch = "main";
      core = {
        editor = "nvim";
        autocrlf = "input";
      };
      pull.rebase = true;
      push.autoSetupRemote = true;
    };
  };
} 
