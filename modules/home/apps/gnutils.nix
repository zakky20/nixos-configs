{ config, lib, pkgs, ... }: {

    home.packages = with pkgs; [
      gnused
      gnutar
      gnumake
      gnugrep
      killall
      file
      which
      gawk
      pkg-config
      harfbuzz
      fontconfig
      freetype
      ripgrep
      p7zip
      unzip
      unrar
      zip
      xz
      jq
      fd
      pv
      tldr
      libnotify
      lm_sensors
      man-pages
      man-pages-posix
    ];
}
