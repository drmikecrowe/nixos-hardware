{ lib, pkgs, ... }:

{
  imports = [
    ../../../../common/gpu/nvidia
    ../../../../common/gpu/intel/disable.nix
    ../xps-common.nix
  ];

  services.xserver.videoDrivers = lib.mkDefault [ "nvidia" ];
  boot.extraModulePackages = lib.mkDefault [ pkgs.linuxPackages.nvidia_x11 ];

  hardware.nvidia.prime = {
    # Bus ID of the Intel GPU.
    intelBusId = lib.mkDefault "PCI:0:2:0";

    # Bus ID of the NVIDIA GPU.
    nvidiaBusId = lib.mkDefault "PCI:1:0:0";
  };
}
