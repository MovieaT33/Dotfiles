{ pkgs, ... }:

{
  nixosConfigurations."nixos" = pkgs.lib.nixosSystem {
    system = "x86_64-linux";
    modules = [ ./bootloader.nix ./hardware.nix ./system.nix ];
  };
}