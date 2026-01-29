{
  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
      import-tree.url = "github:vic/import-tree";
  };

  outputs = { inputs, ... } @ inputs: let
    system = "x86_64-linux";
  in {
    nixosConfigurations = {
      laptop = inputs.nixpkgs.lib.nixosSystem {
        inherit system;
        modules = ./hosts/laptop/default.nix;
      };
    };
  };
}