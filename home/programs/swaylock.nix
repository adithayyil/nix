{ config, pkgs, ... }:

{
  programs.swaylock = {
    enable = true;
    package = pkgs.swaylock-effects;
    settings = {
      color = "eff1f5";

      clock = true;
      timestr = "%H:%M";
      datestr = "%a, %d %b";

      ring-color = "9ca0b0";
      ring-ver-color = "7287fd";
      ring-wrong-color = "d20f39";
      ring-clear-color = "fe640b";

      inside-color = "eff1f5";
      inside-ver-color = "7287fd";
      inside-wrong-color = "d20f39";
      inside-clear-color = "eff1f5";

      line-color = "eff1f5";
      line-ver-color = "eff1f5";
      line-wrong-color = "eff1f5";
      line-clear-color = "eff1f5";

      text-color = "4c4f69";
      text-ver-color = "4c4f69";
      text-wrong-color = "4c4f69";
      text-clear-color = "4c4f69";

      key-hl-color = "7287fd";
      bs-hl-color = "d20f39";

      separator-color = "9ca0b0";

      indicator-radius = 100;
      indicator-thickness = 10;

      show-failed-attempts = true;
      indicator-idle-visible = true;

      font = "Inter";
      font-size = 24;
    };
  };
}
