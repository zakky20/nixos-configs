{ config, lib, pkgs, ... }: {

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };

  services.blueman.enable = true;

  environment.systemPackages = with pkgs; [
    blueman
    bluez
    bluez-tools
  ];

}
