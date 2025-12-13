{
  config,
  lib,
  pkgs,
  ...
}:

{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;

    extraPackages = with pkgs; [
      mesa
      mesa.opencl
    ];

    extraPackages32 = with pkgs.pkgsi686Linux; [
      mesa.opencl
    ];
  };

  boot.initrd.kernelModules = [ "amdgpu" ];

  environment.variables = {
    AMD_VULKAN_ICD = "RADV";
    ROC_ENABLE_PRE_VEGA = "1";
    RUSTICL_ENABLE = "radeonsi";
    DRI_PRIME = "1";
    QT_QPA_PLATFORM = "xcb";
    OCL_ICD_VENDORS = "/run/opengl-driver/etc/OpenCL/vendors";
  };
}
