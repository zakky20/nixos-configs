{ config, lib, pkgs, ... }: {

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.settings.auto-optimise-store = true;
  nixpkgs.config.channel = "nixos-unstable";
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowUnfreePredicate = _: true;
  nixpkgs.config.cudaSupport = true;

  system.autoUpgrade.enable = true;
  system.autoUpgrade.allowReboot = false;

}
