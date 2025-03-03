{ lib, pkgs, ... }:

{
  imports = [
    ../../../common/gpu/intel
    ../../../common/gpu/nvidia/prime.nix
    ./xps-common.nix
  ];

  boot.extraModulePackages = lib.mkDefault [ pkgs.linuxPackages.nvidia_x11 ];

  hardware.nvidia.prime = {
    # Bus ID of the Intel GPU.
    intelBusId = lib.mkDefault "PCI:0:2:0";

    # Bus ID of the NVIDIA GPU.
    nvidiaBusId = lib.mkDefault "PCI:1:0:0";
  };
}
