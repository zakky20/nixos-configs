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

    nixvim = {
      url = "github:nix-community/nixvim";
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

  outputs = { self, nixpkgs, home-manager, nur, chaotic, spicetify-nix, nixvim, ... }@inputs:
  {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      
        modules = [
        ./configuration.nix
        chaotic.nixosModules.default
        nur.modules.nixos.default
        home-manager.nixosModules.home-manager
   
          {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            backupFileExtension = "backup";
            extraSpecialArgs = { inherit spicetify-nix; inherit nixvim; };
            users.zakky = {
              imports = [
                ./home.nix
                spicetify-nix.homeManagerModules.default
              ];
            };
          };
        }
      ];
    };
  };
}
