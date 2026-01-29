{ pkgs, ... }:

{
  nixosConfigurations."nixos" = pkgs.lib.nixosSystem {
    system = "x86_64-linux";
    modules = [ ./hardware.nix ./bootloader.nix ./system.nix ];
  };
}