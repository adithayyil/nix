{
  config,
  lib,
  pkgs,
  ...
}:

{
  # Keep server running when lid is closed
  services.logind.settings.Login = {
    HandleLidSwitch = "ignore";
    HandleLidSwitchDocked = "ignore";
    HandleLidSwitchExternalPower = "ignore";
  };
}
