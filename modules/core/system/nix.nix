{ config, lib, pkgs, ... }: {

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  nixpkgs.config = {
    channel = "nixos-unstable";
    allowUnfree = true;
    cudaSupport = true;
  };

  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
    trusted-users = [ "root" "zakky" ];
    auto-optimise-store = true;
    warn-dirty = false;
  };

  system.autoUpgrade = {
    enable = true;
    allowReboot = false;
  };

}
