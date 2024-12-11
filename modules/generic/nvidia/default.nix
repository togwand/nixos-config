{ config, lib, ... }:
{
  config = lib.mkIf config.generic.nvidia.enable {

    hardware = {
      graphics = {
        enable = true;
        enable32Bit = true;
      };
      nvidia = {
        modesetting.enable = true;
        open = false;
        nvidiaSettings = false;
        package = config.boot.kernelPackages.nvidiaPackages.stable;
      };
    };

    boot.initrd.availableKernelModules = [ "nvidia_drm" ];
    services.xserver.videoDrivers = [ "nvidia" ];

    environment.variables = {
      GBM_BACKEND = "nvidia-drm";
      __GLX_VENDOR_LIBRARY_NAME = "nvidia";
      LIBVA_DRIVER_NAME = "nvidia";
    };
  };
}