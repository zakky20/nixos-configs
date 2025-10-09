{
  description = "NixOS Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
    nur.url = "github:nix-community/NUR";

    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
    spicetify-nix.inputs.nixpkgs.follows = "nixpkgs";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, chaotic, home-manager, spicetify-nix, nur, ... }: {
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
              spicetify-nix.homeManagerModules.default
              ./home.nix
            ];
          };
        }
      ];
    };
  };
}
