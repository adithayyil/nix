{
  config,
  lib,
  pkgs,
  ...
}:

{
  networking.firewall = {
    enable = true;

    allowedTCPPorts = [ 22 ];

    # Common service ports (add as needed):
    # allowedTCPPorts = [ 80 443 ]; # HTTP/HTTPS
    # allowedUDPPorts = [ 51820 ];  # WireGuard

    logRefusedConnections = true;
  };
}
