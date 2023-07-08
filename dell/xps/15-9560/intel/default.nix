{
  imports = [
    ../../../../common/gpu/intel
    ../../../../common/gpu/nvidia/disable.nix
    ../xps-common.nix
  ];

  services.xserver.videoDrivers = lib.mkDefault [ "intel" ];
}
