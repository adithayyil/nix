{
  config,
  lib,
  pkgs,
  ...
}:

{
  services.openssh = {
    enable = true;

    settings = {
      PasswordAuthentication = false;
      PermitRootLogin = "no";
      KbdInteractiveAuthentication = false;
      X11Forwarding = false;
      UseDns = false;
    };

    ports = [ 22 ];
  };

  users.users.adi.openssh.authorizedKeys.keys = [ ];

  services.fail2ban = {
    enable = true;

    ignoreIP = [
      "127.0.0.1/8"
      "::1"
      "10.0.0.0/24"
    ];

    maxretry = 5;
    bantime = "1h";
  };
}
