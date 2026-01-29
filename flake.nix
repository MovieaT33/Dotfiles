{
  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
      import-tree.url = "github:vic/import-tree";
  };

  outputs = { nixpkgs, ... } @ inputs: let
    system = "x86_64-linux";
  in {
    nixosConfigurations = {
      laptop = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = import-tree ./hosts/laptop ++ import-tree ./modules;
      };
    };
  };
}