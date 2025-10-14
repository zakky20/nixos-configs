{
	description = "NixOS Flake";

	inputs = {

        nixpkgs = {
	      url = "github:nixos/nixpkgs/nixos-unstable";
	    };

        chaotic = {
	      url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
	      inputs.nixpkgs.follows = "nixpkgs";
	    };

        nur = {
	      url = "github:nix-community/NUR";
	      inputs.nixpkgs.follows = "nixpkgs";
	    };

	    spicetify-nix = {
	      url = "github:Gerg-L/spicetify-nix";
	      inputs.nixpkgs.follows = "nixpkgs";
	    };

	    home-manager = {
	      url = "github:nix-community/home-manager/master";
	      inputs.nixpkgs.follows = "nixpkgs";
	    };
     
      };

      outputs = { self, nixpkgs, home-manager, nur, chaotic, spicetify-nix, ... }: {
          nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {

	  modules = [
	    ./configuration.nix
	    chaotic.nixosModules.default
	    home-manager.nixosModules.home-manager

	    {
		home-manager.useGlobalPkgs = true;
		home-manager.useUserPackages = true;
		home-manager.backupFileExtension = "backup";
                home-manager.extraSpecialArgs = { inherit spicetify-nix; };
		home-manager.users.zakky = {
		  imports = [
		     ./home.nix
		     spicetify-nix.homeManagerModules.default
		  ];
               };
            }
        ];
     };
  };
}
