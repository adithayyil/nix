{ config, pkgs, ... }:

{
  services.mako = {
    enable = true;

    # Colors
    backgroundColor = "#eff1f5";  # Base
    textColor = "#4c4f69";        # Text
    borderColor = "#7287fd";      # Lavender
    progressColor = "over #9ca0b0"; # Overlay0

    # Position and layout
    anchor = "top-right";
    width = 350;
    height = 150;
    margin = "10";
    padding = "15";
    borderSize = 2;
    borderRadius = 10;

    # Icons
    icons = true;
    maxIconSize = 48;

    # Behavior
    defaultTimeout = 5000;  # 5 seconds
    ignoreTimeout = false;

    # Font
    font = "Inter 11";

    # Grouped notifications
    groupBy = "app-name";

    # Urgency styling
    extraConfig = ''
      [urgency=low]
      border-color=#9ca0b0
      default-timeout=3000

      [urgency=normal]
      border-color=#7287fd
      default-timeout=5000

      [urgency=critical]
      border-color=#d20f39
      background-color=#d20f39
      text-color=#eff1f5
      default-timeout=0
    '';
  };
}
