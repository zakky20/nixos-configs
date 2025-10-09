{ config, lib, pkgs, spicetify-nix, ... }:

let
  spicePkgs = spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
in

{
  programs.spicetify = {
    enable = true;

    enabledExtensions = with spicePkgs.extensions; [
      adblock
      hidePodcasts
    ];
    
    enabledSnippets = with spicePkgs.snippets; [
    ];
    
    theme = spicePkgs.themes.sleek;
      colorScheme = "Nord";
  };
}
