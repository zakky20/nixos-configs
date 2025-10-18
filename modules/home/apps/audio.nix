{ config, lib, pkgs, ... }: {

   home.packages = with pkgs; [
      mpd
      mpc
      vlc
      ffmpeg
      playerctl
      yt-dlp
      alsa-utils
      pavucontrol
   ];
}
