{ config, lib, pkgs, ... }:

{
  imports = [
      ./hardware-configuration.nix
      ./modules/core
  ];

  system.stateVersion = "25.05";

}
