{ config, lib, pkgs, ... }: {

   home.packages = with pkgs; [
      mpv
      mpd
      mpc
      vlc
      ffmpeg
      playerctl
      yt-dlp
      ani-cli
      alsa-utils
      pavucontrol
   ];
}
