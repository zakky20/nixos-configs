{ config, lib, pkgs, spicetify-nix, ... }:

let
  spicePkgs = spicetify-nix.legacyPackages.${pkgs.system};
in

{
  programs.spicetify = {
    enable = true;

    enabledExtensions = with spicePkgs.extensions; [
      adblock
      hidePodcasts
      autoSkipVideo
      volumePercentage
    ];
    
    enabledSnippets = with spicePkgs.snippets; [
    ];
    
    theme = spicePkgs.themes.comfy;
      colorScheme = "Nord";
  };
}
