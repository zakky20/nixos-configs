{ inputs, pkgs, ... }: {

   home.file = {
    "~/Pictures/Wallpapers/Nord/" = {
      source = inputs.nord-wallpapers.packages."${pkgs.system}".default;
      recursive = true;
    };
  };

}
