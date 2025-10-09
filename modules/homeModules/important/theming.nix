{ config, lib, pkgs, ... }: {

  gtk.enable = true;
  qt.enable = true;

  gtk.font.name = "Iosevka Nerd Font Bold";
  gtk.font.size = 11;

  gtk.theme.package = pkgs.nordic;
  gtk.theme.name = "Nordic-darker";

  gtk.iconTheme.package = pkgs.papirus-icon-theme;
  gtk.iconTheme.name = "Papirus-Dark";

  gtk.cursorTheme.package = pkgs.simp1e-cursors;
  gtk.cursorTheme.name = "Simp1e-Nord-Light";

  home.pointerCursor = {
    package = pkgs.simp1e-cursors;
    name = "Simp1e-Nord-Light";
    size = 24;
  };
}
