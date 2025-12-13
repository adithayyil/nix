{
  config,
  pkgs,
  ...
}:

{
  imports = [
    # Hardware configuration
    ./hardware.nix

    # Common modules
    ../../common/boot.nix
    ../../common/networking.nix
    ../../common/users.nix
    ../../common/fonts.nix
    ../../common/nix.nix

    # Server profile
    ../../profiles/server
  ];

  networking.networkmanager.enable = true;

  # System packages
  environment.systemPackages = with pkgs; [
    htop
    ncdu
  ];

  # Trust this machine's nix store for deployments
  nix.settings.trusted-users = [
    "adi"
    "root"
  ];

  # [!!DO NOT CHANGE!!] NixOS release version [!!DO NOT CHANGE!!]
  system.stateVersion = "25.05";
}
