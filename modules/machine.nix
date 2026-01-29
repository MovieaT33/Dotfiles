{ ... }:

{
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in {
    nixosConfigurations."nixos" = pkgs.lib.nixosSystem {
      inherit system;
      modules = [
        ./hardware.nix
        ./bootloader.nix
        ./system.nix
      ];
    };
  };
}