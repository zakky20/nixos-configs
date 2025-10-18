{ config, lib, pkgs, ... }: {

  programs.bat = {
    enable = true;
    config = {
      theme = "Nord";
    };
    extraPackages = with pkgs.bat-extras; [
      batman
      batpipe
      batgrep
    ];
  };

}
