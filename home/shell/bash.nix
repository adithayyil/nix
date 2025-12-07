{ config, pkgs, lib, ... }:

{
  programs.bash = {
    enable = true;

    # History settings
    historyControl = [ "ignoredups" "ignorespace" ];
    historyFile = "${config.home.homeDirectory}/.bash_history";
    historyFileSize = 10000;
    historySize = 10000;

    # Shell options
    initExtra = ''
      # Better tab completion
      bind 'set completion-ignore-case on'
      bind 'set show-all-if-ambiguous on'
    '';
  };

  programs.starship = {
    enable = true;
    settings = {
      # Minimal prompt format
      format = lib.concatStrings [
        "$nix_shell"
        "$directory"
        "$git_branch"
        "$git_status"
        "$character"
      ];

      # Right side (empty for now)
      right_format = "";

      # Directory
      directory = {
        style = "bold blue";
        truncation_length = 3;
        truncate_to_repo = true;
      };

      # Git branch
      git_branch = {
        symbol = " ";
        style = "bold purple";
        format = "[$symbol$branch]($style) ";
      };

      # Git status
      git_status = {
        style = "bold red";
        format = "([$all_status$ahead_behind]($style) )";
      };

      # Nix shell
      nix_shell = {
        symbol = " ";
        style = "bold purple";
        format = "[$symbol]($style) ";
      };

      # Prompt symbol
      character = {
        success_symbol = "[\\$](bold blue)";
        error_symbol = "[\\$](bold red)";
      };
    };
  };
}
