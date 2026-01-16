{
  config,
  pkgs,
  lib,
  ...
}:

{
  services.kanshi = {
    enable = true;
    settings = [
      {
        profile.name = "home";
        profile.outputs = [
          {
            criteria = "BNQ BenQ EX2510S G3N03892019";
            mode = "1920x1080@165.003Hz";
            position = "0,0";
          }
          {
            criteria = "eDP-1";
            mode = "1920x1080@60.001Hz";
            position = "0,1080";
          }
        ];
      }
      {
        profile.name = "mc-2nd-floor";
        profile.outputs = [
          {
            criteria = "Dell Inc. DELL P2723QE 18ZJYV3";
            mode = "2560x1440@59.951Hz";
            position = "0,0";
          }
          {
            criteria = "eDP-1";
            mode = "1920x1080@60.001Hz";
            position = "0,1440";
          }
        ];
      }
      {
        profile.name = "mc-3rd-floor";
        profile.outputs = [
          {
            criteria = "HP Inc. HP E27q G4 CNK2500T44";
            mode = "2560x1440@59.951Hz";
            position = "0,0";
          }
          {
            criteria = "eDP-1";
            mode = "1920x1080@60.001Hz";
            position = "0,1440";
          }
        ];
      }
      {
        profile.name = "laptop";
        profile.outputs = [
          {
            criteria = "eDP-1";
            mode = "1920x1080@60.001Hz";
            position = "0,0";
          }
        ];
      }
    ];
  };
}
