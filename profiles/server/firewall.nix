{
  config,
  lib,
  pkgs,
  ...
}:

{
  networking.firewall = {
    enable = true;

    allowedTCPPorts = [
      22
      80
      443
      3001
      8080
    ];

    logRefusedConnections = true;
  };
}
