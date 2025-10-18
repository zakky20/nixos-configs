{ config, lib, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;

    settings = {
      env = {
        TERM = "xterm-256color";
      };

      font = {
        size = 12.0;

        offset = {
          "x" = 0;
          "y" = 1;
        };

        bold = {
          family = "Iosevka Nerd Font Mono";
          style = "Bold";
        };

        bold_italic = {
          family = "Iosevka Nerd Font Mono";
          style = "Bold Italic";
        };

        italic = {
          family = "Iosevka Nerd Font Mono";
          style = "Bold Italic";
        };

        normal = {
          family = "Iosevka Nerd Font Mono";
          style = "Bold";
        };
      };

      keyboard.bindings = [
        {
          action = "Paste";
          key = "V";
          mods = "Control|Shift";
        }
        {
          action = "Copy";
          key = "C";
          mods = "Control|Shift";
        }
        {
          action = "PasteSelection";
          key = "Insert";
          mods = "Shift";
        }
        {
          action = "ResetFontSize";
          key = "Key0";
          mods = "Control";
        }
        {
          action = "IncreaseFontSize";
          key = "Equals";
          mods = "Control";
        }
        {
          action = "IncreaseFontSize";
          key = "Plus";
          mods = "Control";
        }
        {
          action = "DecreaseFontSize";
          key = "Minus";
          mods = "Control";
        }
        {
          action = "ToggleFullscreen";
          key = "F11";
          mods = "None";
        }
        {
          action = "Paste";
          key = "Paste";
          mods = "None";
        }
        {
          action = "Copy";
          key = "Copy";
          mods = "None";
        }
        {
          action = "ClearLogNotice";
          key = "L";
          mods = "Control";
        }
        {
          chars = "\\f";
          key = "L";
          mods = "Control";
        }
        {
          action = "ScrollPageUp";
          key = "PageUp";
          mode = "~Alt";
          mods = "None";
        }
        {
          action = "ScrollPageDown";
          key = "PageDown";
          mode = "~Alt";
          mods = "None";
        }
        {
          action = "ScrollToTop";
          key = "Home";
          mode = "~Alt";
          mods = "Shift";
        }
        {
          action = "ScrollToBottom";
          key = "End";
          mode = "~Alt";
          mods = "Shift";
        }
      ];

      scrolling = {
        history = 5000;
      };

      window = {
        dynamic_padding = false;
        opacity = 1.0;
        title = "Alacritty";

        padding = {
          x = 15;
          y = 15;
        };

        class = {
          general = "Alacritty";
          instance = "Alacritty";
        };
      };

      colors = {
        primary = {
          background = "#2E3440";
          foreground = "#D8DEE9";
        };

        normal = {
          black = "#3B4252";
          red = "#BF616A";
          green = "#A3BE8C";
          yellow = "#EBCB8B";
          blue = "#81A1C1";
          magenta = "#B48EAD";
          cyan = "#88C0D0";
          white = "#E5E9F0";
        };

        bright = {
          black = "#4C566A";
          red = "#BF616A";
          green = "#A3BE8C";
          yellow = "#EBCB8B";
          blue = "#81A1C1";
          magenta = "#B48EAD";
          cyan = "#8FBCBB";
          white = "#ECEFF4";
        };
      };
    };
  };
}
