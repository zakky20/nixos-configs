{ config, lib, pkgs, ... }:

{
  services.picom = {
    enable = true;
    
    backend = "glx";
    vSync = true;
    
    settings = {
      glx-use-copysubbuffer-mesa = true;
      xrender-sync = true;
      xrender-sync-fence = true;
      
      transition-length = 300;
      transition-pow-x = 0.3;
      transition-pow-y = 0.3;
      transition-pow-w = 0.3;
      transition-pow-h = 0.3;
      size-transition = true;
      
      corner-radius = 0;
      detect-rounded-corners = false;
      rounded-corners-exclude = [
        "class_g = 'i3-frame'"
        "class_g = 'rofi'"
        "name = 'Notification'"
        "window_type = 'dock'"
        "window_type = 'desktop'"
      ];
      
      blur-method = "dual_kawase";
      blur-size = 15;
      blur-strength = 7;
      blur-background = true;
      blur-background-frame = false;
      blur-kern = "3x3box";
      blur-background-exclude = [
        "window_type = 'Polybar'"
        "window_type = 'desktop'"
        "window_type = 'dock'"
        "role = 'xborder'"
        "class_g = 'Conky'"
        "name = 'Notification'"
        "_GTK_FRAME_EXTENTS"
      ];
      
      shadow = true;
      shadow-radius = 10;
      shadow-offset-x = -7;
      shadow-offset-y = -7;
      shadow-opacity = 0.7;
      shadow-color = "#000000";
      
      inactive-opacity = 0.95;
      active-opacity = 0.95;
      inactive-dim = 0.0;
      opacity-rule = [
        "100:class_g = 'firefox'"
        "100:class_g = 'discord'"
        "75:class_g = 'kitty'"
        "100:class_g = 'spotify-launcher'"
      ];
    };
  };
}
