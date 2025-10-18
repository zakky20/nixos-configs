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
    package = pkgs.simp1e-cursors;
    name = "Simp1e-Nord-Light";
    size = 24;
  };

  home.pointerCursor = {
    package = pkgs.simp1e-cursors;
    name = "Simp1e-Nord-Light";
    size = 24;
  };

}
