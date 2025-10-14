{ config, lib, pkgs, ... }: {

   environment.systemPackages = with pkgs; [
    wineWowPackages.stable
	wine
	(wine.override { wineBuild = "wine64"; })
	wine64
	wineWowPackages.staging
	winetricks
   ];

}
