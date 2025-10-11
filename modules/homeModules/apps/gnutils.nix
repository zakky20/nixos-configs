{ config, lib, pkgs, ... }: {

    home.packages = with pkgs; [
      gnused
      gnutar
      gnumake
      gnugrep
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
      tldr
      man-pages
      man-pages-posix
    ];
}
