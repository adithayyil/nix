{ config, lib, pkgs, ... }:

{
  # Window manager
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
  };

  # For screen sharing and file pickers
  xdg.portal = {
    enable = true;
    wlr.enable = true;
  };
}
