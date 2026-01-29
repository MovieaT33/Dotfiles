{
  inputs = {
      flake-parts.url = "github:hercules-ci/flake-parts";
      import-tree.url = "github:vic/import-tree";
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { flake-parts, nixpkgs, ... } @ inputs:
    flake-parts.lib.mkFlake {} {
      systems = [ "x86_64-linux" ];
      imports = [ ./modules/machine.nix ];
    };
}