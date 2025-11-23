{ config, lib, pkgs, ... }:

{
  # GPU drivers and hardware acceleration
  hardware.graphics = {
    enable = true;
    enable32Bit = true; # For 32-bit applications

    extraPackages = with pkgs; [
      # AMD GPU drivers (RADV Vulkan driver included by default)
      mesa

      # OpenCL support for AMD (required for DaVinci Resolve)
      rocmPackages.clr.icd
      rocmPackages.clr
    ];
  };

  # AMD GPU kernel module
  boot.initrd.kernelModules = [ "amdgpu" ];

  # Environment variables for AMD GPU
  environment.variables = {
    # Use AMD Vulkan driver
    AMD_VULKAN_ICD = "RADV";

    # ROCm device selection (for OpenCL)
    ROC_ENABLE_PRE_VEGA = "1";
  };
}
