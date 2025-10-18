{ config, lib, pkgs, ... }: {

   home.packages = with pkgs; [
      mpd
      mpc
      vlc
      ffmpeg
      playerctl
      yt-dlp
      ani-cli
      alsa-utils
      pavucontrol
      easyeffects
      handbrake
   ];
}
