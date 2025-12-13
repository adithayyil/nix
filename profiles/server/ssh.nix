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
      # Disable password auth (keys only)
      PasswordAuthentication = false;
      PermitRootLogin = "no";

      # Security hardening
      KbdInteractiveAuthentication = false;
      X11Forwarding = false;

      # Performance
      UseDns = false;
    };

    # Default SSH port
    ports = [ 22 ];
  };

  users.users.adi.openssh.authorizedKeys.keys = [ ];

  services.fail2ban = {
    enable = true;

    ignoreIP = [
      "127.0.0.1/8"
      "::1"
      "10.0.0.0/24"  # Local network
    ];

    maxretry = 5;
    bantime = "1h";

    jails.sshd = ''
      enabled = true
      port = 22
    '';
  };
}
