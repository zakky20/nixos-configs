{ config, lib, pkgs, ... }: {

  programs.cava = {
    enable = true;
    
    settings = {
      general = {
        framerate = 60;
        bars = 0;
        bar_width = 2;
        bar_spacing = 1;
      };

      input = {
        method = "pulse";
        source = "auto";
      };

      output = {
        method = "ncurses";
        channels = "stereo";
        mono_option = "average";
      };

      color = {
        gradient = 1;
        gradient_count = 8;
        gradient_color_1 = "'#88C0D0'";
        gradient_color_2 = "'#81A1C1'";
        gradient_color_3 = "'#5E81AC'";
        gradient_color_4 = "'#B48EAD'";
        gradient_color_5 = "'#D08770'";
        gradient_color_6 = "'#EBCB8B'";
        gradient_color_7 = "'#A3BE8C'"; 
        gradient_color_8 = "'#BF616A'";
      };

      smoothing = {
        monstercat = 1;
        waves = 0;
      };
    };
  };
}
