{ config, ... }:

{
  nixosModules.bootloaderModule.config = {
    boot = {
      efi.canTouchEfiVariables = true;
      loader = {
        systemd-boot = {
          enable = true;
          editor = false;
          consoleMode = "2";
        };
        timeout = 1;
      };
    };
  };
}