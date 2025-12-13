{
  config,
  pkgs,
  lib,
  ...
}:

let
  davinci = import ../pkgs/davinci-resolve { inherit pkgs; };
in
{
  imports = [
    ./desktop/sway.nix
    ./programs/kitty.nix
    ./programs/fuzzel.nix
    ./programs/tmux.nix
    ./programs/mako.nix
    ./programs/git.nix
    ./programs/ssh.nix
    ./programs/vscodium.nix
    ./shell/bash.nix
  ];

  home.username = "adi";
  home.homeDirectory = "/home/adi";

  programs.home-manager.enable = true;

  home.stateVersion = "25.05";

  home.packages = with pkgs; [
    neovim
    wget
    btop
    just

    claude-code
    github-copilot-cli
    uv
    nixfmt-rfc-style
    deploy-rs

    vesktop
    figma-linux
    signal-desktop
    mpv
    davinci
    spotify
    lumafly

    brightnessctl
    wl-clipboard
    hyprshot
    swaylock-effects
    waybar
    pulseaudio
  ];

  xdg.enable = true;

  home.sessionVariables = {
    ELECTRON_OZONE_PLATFORM_HINT = "auto";
    NIXOS_OZONE_WL = "1";
  };
}
