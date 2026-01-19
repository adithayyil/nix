{
  config,
  lib,
  pkgs,
  hostname,
  ...
}:

{
  networking.hostName = hostname;

  time.timeZone = "America/Toronto";

  networking.networkmanager.insertNameservers = [
    "1.1.1.1"
    "1.0.0.1"
  ];
}
