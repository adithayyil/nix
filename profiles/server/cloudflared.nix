{ config, ... }:

{
  services.cloudflared = {
    enable = true;
    tunnels = {
      "b5601f71-3e24-45bd-b7ee-28656611c0ac" = {
        credentialsFile = config.sops.secrets."cloudflared/credentials".path;
        default = "http_status:404";

        ingress = {
          "vault.mangoo.site" = "http://localhost:80";
          "store.mangoo.site" = "http://localhost:8080";
          "monitor.mangoo.site" = "http://localhost:3001";
        };
      };
    };
  };

  systemd.services.cloudflared-tunnel-b5601f71-3e24-45bd-b7ee-28656611c0ac = {
    after = [ "network-online.target" ];
    wants = [ "network-online.target" ];
  };
}
