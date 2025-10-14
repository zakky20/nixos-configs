{ config, lib, pkgs, ... }: {

  boot.kernelPackages = pkgs.linuxPackages_cachyos;
  boot.blacklistedKernelModules = [ "nouveau" ];
  boot.initrd.kernelModules = [ "btusb" ];
  boot.kernel.sysctl."kernel.sysrq" = 1;

  boot.kernelModules = [ "v4l2loopback" ];
    boot.extraModulePackages = [
        config.boot.kernelPackages.v4l2loopback
    ];

}
