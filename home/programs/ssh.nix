{
  config,
  lib,
  pkgs,
  ...
}:

{
  programs.ssh = {
    enable = true;

    enableDefaultConfig = false;

    matchBlocks = {
      "meth" = {
        hostname = "10.0.0.76";
        user = "adi";
        identityFile = "~/.ssh/methamphetamine";
      };

      "github.com" = {
        identityFile = "~/.ssh/github";
      };
    };
  };
}
