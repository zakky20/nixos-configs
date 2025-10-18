{ config, lib, pkgs, ... }: {
  
   home.packages = with pkgs; [
      anydesk
      libreoffice
      nix-search-tv
      mpvScripts.webtorrent-mpv-hook
      nh
    ];
}
