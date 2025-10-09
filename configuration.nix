{ config, lib, pkgs, ... }:

{
  imports = [
      ./hardware-configuration.nix
      ./modules/configModules
  ];

  system.stateVersion = "25.05";

}
