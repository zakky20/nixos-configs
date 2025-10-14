{ config, lib, pkgs, ... }:

{
    boot = {
        tmp.cleanOnBoot = true;
        loader = {
            efi.canTouchEfiVariables = true;
            systemd-boot = {
                enable = true;
                configurationLimit = 10;
            };
        };
    };
}
