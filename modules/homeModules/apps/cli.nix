{ config, lib, pkgs, ... }: {

   home.packages = with pkgs; [
      cmatrix
      cbonsai
      tty-clock
      asciiquarium
      cowsay
      figlet
      tokei
      btop
      trash-cli
   ];

}
