{
  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
      import-tree.url = "github:vic/import-tree";
  };

  outputs = inputs: let
    system = "x86_64-linux";
  in {
    nixosConfigurations = {
      laptop = inputs.nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs; };
        modules = [ ./hosts/laptop/default.nix ];
      };
    };
  };
}