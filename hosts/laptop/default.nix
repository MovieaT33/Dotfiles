{ inputs, ... }:

let
  modulesTree = builtins.attrValues (inputs.import-tree ../../modules);
in {
  imports = [
    ./hardware.nix
  ] ++ modulesTree;
}