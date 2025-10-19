{ config, lib, pkgs, ... }: {

programs.git = {
    enable = true;

    settings.user.name = "zakky20";
    settings.user.email = "niku.raul@gmail.com";

    settings = {
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
