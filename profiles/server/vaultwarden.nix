{
  config,
  lib,
  pkgs,
  ...
}:

{
  services.vaultwarden = {
    enable = true;

    config = {
      ROCKET_ADDRESS = "127.0.0.1";
      ROCKET_PORT = 8222;

      SIGNUPS_ALLOWED = false;
      INVITATIONS_ALLOWED = true;

      ROCKET_LOG = "critical";
    };
  };
}
