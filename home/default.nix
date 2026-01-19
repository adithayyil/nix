{
  config,
  pkgs,
  pkgs-stable,
  lib,
  ...
}:

let
  davinci = import ../pkgs/davinci-resolve { inherit pkgs pkgs-stable; };
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
    ./programs/neovim.nix
    ./programs/zathura.nix
    ./programs/kanshi.nix
    ./shell/bash.nix
  ];

  home.username = "adi";
  home.homeDirectory = "/home/adi";

  programs.home-manager.enable = true;

  home.stateVersion = "25.05";

  home.packages = with pkgs; [
    # dev
    rustc
    cargo
    rust-analyzer
    rustfmt
    gcc
    rustlings
    sqlitebrowser
    typst

    # cli
    wget
    btop
    just
    jq

    # AI
    claude-code
    github-copilot-cli

    # nix tools
    nixfmt-rfc-style
    deploy-rs

    # python tools
    uv

    # productivity
    joplin-desktop
    anki

    # communication
    vesktop
    signal-desktop

    # media
    mpv
    spotify

    # creative
    figma-linux
    davinci
    obs-studio

    # gaming
    lumafly

    # utils
    localsend
    qbittorrent

    # wl utilities
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
