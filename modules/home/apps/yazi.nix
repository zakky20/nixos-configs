{ config, lib, pkgs, ... }:

{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      mgr = {
        ratio = [2 4 3];
        sort_by = "alphabetical";
        show_symlink = true;
      };
      preview = {
        max_width = 1920;
        max_height = 1080;
      };
    };
  };
}
