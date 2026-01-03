{
  config,
  pkgs,
  lib,
  ...
}:

{
  programs.tmux = {
    enable = true;
    terminal = "tmux-256color";
    historyLimit = 10000;
    baseIndex = 1;
    keyMode = "vi";
    mouse = true;

    prefix = "C-a";

    extraConfig = ''
      set-option -sa terminal-overrides ",xterm*:Tc"

      set-option -g focus-events on

      set-option -sg escape-time 10

      set-option -g renumber-windows on

      set-window-option -g pane-base-index 1

      bind h select-pane -L
      bind j select-pane -D
      bind k select-pane -U
      bind l select-pane -R

      bind -r H resize-pane -L 5
      bind -r J resize-pane -D 5
      bind -r K resize-pane -U 5
      bind -r L resize-pane -R 5

      bind | split-window -h -c "#{pane_current_path}"
      bind - split-window -v -c "#{pane_current_path}"
      unbind '"'
      unbind %

      bind r source-file ~/.config/tmux/tmux.conf \; display "Config reloaded!"

      set-option -g status-position top
      set-option -g status-justify centre

      set-option -g status-style "bg=#eff1f5,fg=#4c4f69"

      set-window-option -g window-status-style "fg=#4c4f69,bg=#eff1f5"
      set-window-option -g window-status-current-style "fg=#eff1f5,bg=#7287fd,bold"

      set-option -g pane-border-style "fg=#9ca0b0"
      set-option -g pane-active-border-style "fg=#9ca0b0"
      set-option -g pane-border-lines heavy

      set-option -g message-style "bg=#7287fd,fg=#eff1f5"
      set-option -g message-command-style "bg=#7287fd,fg=#eff1f5"

      set-option -g status-left "#[fg=#eff1f5,bg=#7287fd,bold] #S #[fg=#7287fd,bg=#eff1f5]"
      set-option -g status-right "#[fg=#7287fd,bg=#eff1f5]#[fg=#eff1f5,bg=#7287fd] #H "
      set-option -g status-left-length 20
      set-option -g status-right-length 50

      set-window-option -g window-status-format " #I:#W "
      set-window-option -g window-status-current-format " #I:#W "

      set-window-option -g mode-style "bg=#7287fd,fg=#eff1f5"
    '';
  };
}
