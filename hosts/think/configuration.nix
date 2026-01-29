{
  config,
  pkgs,
  ...
}:

{
  imports = [
    ./hardware.nix

    ../../common/boot.nix
    ../../common/networking.nix
    ../../common/users.nix
    ../../common/fonts.nix
    ../../common/nix.nix

    ../../profiles/desktop

    ../../programs/firefox.nix
    ../../programs/steam.nix
  ];

  networking.networkmanager.enable = true;

  environment.systemPackages = with pkgs; [
    sops
    protonvpn-gui
  ];

  networking.firewall = {
    # for localsend
    allowedTCPPorts = [ 53317 ];
    allowedUDPPorts = [ 53317 ];
  };

  # DO NOT CHANGE
  system.stateVersion = "25.05";
}
