{ config, lib, pkgs, ... }: {

   home.packages = with pkgs; [
      cmatrix
      cbonsai
      tty-clock
      asciiquarium
      gotop
      cowsay
      figlet
      tokei
      trash-cli
   ];

}
