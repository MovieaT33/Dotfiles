{ inputs, ... }:

{
  imports = builtins.attrValues (inputs.import-tree ../../modules);
}