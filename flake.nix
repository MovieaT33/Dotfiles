{
  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
      import-tree.url = "github:vic/import-tree";
  };

  outputs = { nixpkgs, import-tree, ... } @ inputs: let
    system = "x86_64-linux";
  in {
    nixosConfigurations = {
      laptop = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = builtins.attrValues (import-tree ./hosts/laptop)
               ++ builtins.attrValues (import-tree ./modules);
      };
    };
  };
}