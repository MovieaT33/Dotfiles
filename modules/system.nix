{ inputs, ... }:

let
  pkgs = inputs.nixpkgs;
in
{
  nixosModules.nixosModule.config = {
    system.stateVersion = "25.11";
    environment.systemPackages = with pkgs; [ git just ];
  };
}