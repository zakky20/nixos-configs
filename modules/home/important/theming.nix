{ config, lib, pkgs, ... }: {

  gtk = {
    enable = true;
  };

  qt = {
    enable = true;
  };

  gtk.font = {
    name = "Iosevka Nerd Font Bold";
    size = 11;
  };

  gtk.theme = {
    package = pkgs.nordic;
    name = "Nordic-darker";
  };

  gtk.iconTheme = {
    package = pkgs.papirus-icon-theme;
    name = "Papirus-Dark";
  };

  gtk.cursorTheme = {
    package = pkgs.nordzy-cursor-theme;
    name = "Nordzy-cursors-white";
    size = 24;
  };

  home.pointerCursor = {
    package = pkgs.nordzy-cursor-theme;
    name = "Nordzy-cursors-white";
    size = 24;
  };

}
