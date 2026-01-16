{
  config,
  lib,
  pkgs,
  ...
}:

{
  programs.ssh = {
    enable = true;

    # Disable default config to avoid deprecation warning
    enableDefaultConfig = false;

    matchBlocks = {
      "meth" = {
        hostname = "192.168.2.111";
        user = "adi";
        identityFile = "~/.ssh/meth";
      };

      "github.com" = {
        identityFile = "~/.ssh/github";
      };
    };
  };
}
