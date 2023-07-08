{ lib, ... }:

{
  imports = [
    ../../../common/cpu/intel
    ../../../common/pc/laptop
  ];

  boot.blacklistedKernelModules = lib.mkDefault [ "nouveau" "bbswitch" ];
  boot.kernelParams = lib.mkDefault [ "acpi_rev_override" ];

  # This will save you money and possibly your life!
  services.thermald.enable = lib.mkDefault true;
}
