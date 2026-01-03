{ ... }:

{
  programs.nvf = {
    enable = true;

    settings.vim = {
      viAlias = false;
      vimAlias = true;

      theme = {
        enable = true;
        name = "catppuccin";
        style = "latte";
      };

      lsp = {
        enable = true;
        formatOnSave = true;
        lspSignature.enable = true;
      };

      languages = {
        nix.enable = true;
        rust = {
          enable = true;
          extensions.crates-nvim.enable = true;
        };
        python.enable = true;
        bash.enable = true;
        markdown.enable = true;
        ts.enable = true;
        html.enable = true;
        css.enable = true;
      };

      treesitter.enable = true;

      telescope.enable = true;

      autocomplete.nvim-cmp.enable = true;

      filetree.neo-tree.enable = true;

      visuals = {
        nvim-web-devicons.enable = true;
        indent-blankline.enable = true;
        nvim-cursorline.enable = true;
      };

      git = {
        enable = true;
        gitsigns.enable = true;
      };

      autopairs.nvim-autopairs.enable = true;

      comments.comment-nvim.enable = true;

      binds.whichKey.enable = true;

      options = {
        number = true;
        relativenumber = true;
        tabstop = 2;
        shiftwidth = 2;
        expandtab = true;
        clipboard = "unnamedplus";
        mouse = "a";
        ignorecase = true;
        smartcase = true;
        termguicolors = true;
        signcolumn = "yes";
        splitright = true;
        splitbelow = true;
      };
    };
  };
}
