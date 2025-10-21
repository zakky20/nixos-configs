{ config, lib, pkgs, ... }:

{
  programs.btop = {
    enable = true;
    settings = {
      color_theme = "nord";
      theme_background = false;
      truecolor = true;
      rounded_corners = true;
      graph_symbol = "braille";
      shown_boxes = "cpu mem net proc";
      update_ms = 2000;
      proc_sorting = "cpu lazy";
      cpu_graph_upper = "total";
      cpu_graph_lower = "total";
      show_uptime = true;
    };
  };
}
