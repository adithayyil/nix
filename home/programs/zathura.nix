{
  config,
  pkgs,
  lib,
  ...
}:

{
  programs.zathura = {
    enable = true;
    options = {
      notification-error-bg = "#eff1f5";
      notification-error-fg = "#d20f39";
      notification-warning-bg = "#eff1f5";
      notification-warning-fg = "#df8e1d";
      notification-bg = "#eff1f5";
      notification-fg = "#7287fd";
      completion-bg = "#ccd0da";
      completion-fg = "#4c4f69";
      completion-group-bg = "#ccd0da";
      completion-group-fg = "#7287fd";
      completion-highlight-bg = "#575268";
      completion-highlight-fg = "#eff1f5";
      index-bg = "#eff1f5";
      index-fg = "#4c4f69";
      index-active-bg = "#575268";
      index-active-fg = "#eff1f5";
      inputbar-bg = "#eff1f5";
      inputbar-fg = "#4c4f69";
      statusbar-bg = "#eff1f5";
      statusbar-fg = "#4c4f69";
      highlight-color = "#df8e1d";
      highlight-active-color = "#40a02b";
      default-bg = "#eff1f5";
      default-fg = "#4c4f69";
    };
  };
}
