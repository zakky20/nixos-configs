{ config, lib, pkgs, ... }: {

   programs.mpv = {
      enable = true;
      config = {
        ytdl-format = "bestvideo[height<=?720][fps<=?60]+bestaudio/best";
        hwdec = "auto";
        profile = "gpu-hq";
        keep-open = true;
    };
  };

}
