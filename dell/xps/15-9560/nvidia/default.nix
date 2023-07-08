{ lib, pkgs, ... }:

{
  imports = [
    ../../../../common/gpu/nvidia
    ../../../../common/gpu/intel/disable.nix
    ../xps-common.nix
  ];

  services.xserver.videoDrivers = lib.mkDefault [ "nvidia" ];
  boot.extraModulePackages = lib.mkDefault [ pkgs.linuxPackages.nvidia_x11 ];
}
