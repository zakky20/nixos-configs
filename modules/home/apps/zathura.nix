{ config, lib, pkgs, ... }:

{
  programs.zathura = {
    enable = true;
    
    options = {
      pages-per-row = 1;
      scroll-page-aware = true;
      scroll-full-overlap = 0.01;
      scroll-step = 100;
      font = "Iosevka Nerd Font 11";
      recolor = true;
      recolor-keephue = false;
      recolor-reverse-video = false;
      
      completion-fg = "#D8DEE9";
      completion-bg = "#2E3440";
      completion-group-fg = "#88C0D0";
      completion-group-bg = "#2E3440";
      completion-highlight-fg = "#2E3440";
      completion-highlight-bg = "#D8DEE9";
      
      default-bg = "#2E3440";
      
      inputbar-fg = "#D8DEE9";
      inputbar-bg = "#2E3440";
      
      notification-fg = "#D8DEE9";
      notification-bg = "#2E3440";
      notification-error-fg = "#ECEFF4";
      notification-error-bg = "#BF616A";
      notification-warning-fg = "#ECEFF4";
      notification-warning-bg = "#EBCB8B";
      
      statusbar-fg = "#D8DEE9";
      statusbar-bg = "#2E3440";
      
      highlight-color = "#88C0D0";
      highlight-active-color = "#88C0D0";
      
      recolor-lightcolor = "rgba(0,0,0,0)";
      recolor-darkcolor = "#D8DEE9";
      
      render-loading-fg = "#D8DEE9";
      render-loading-bg = "#2E3440";
      
      index-fg = "#D8DEE9";
      index-bg = "#2E3440";
      index-active-fg = "#2E3440";
      index-active-bg = "#D8DEE9";
    };
  };
}
