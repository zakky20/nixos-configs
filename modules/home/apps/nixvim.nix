{ config, lib, pkgs, ... }: {

  # Enable NixVim
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    vimAlias = true;

    # Globals
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    # Colorscheme
    colorschemes.nord.enable = true;

    # Treesitter
    plugins.treesitter = {
      enable = true;
      settings = {
        highlight.enable = true;
        indent.enable = true;
        incremental_selection.enable = true;
      };
      nixGrammars = true;
    };

    # Autocompletion
    plugins.cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        sources = [
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "buffer"; }
        ];
        mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-e>" = "cmp.mapping.close()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        };
      };
    };

    # Lsp
    plugins.lsp = {
      enable = true;
      servers = {
        texlab.enable = true;
        nil_ls.enable = true;
        lua_ls.enable = true; 
        pyright.enable = true;
        rust_analyzer.installCargo.enable = true;
        bashls.enable = true;
        cmake.enable = true;
        eslint.enable = true;
        html.enable = true;
        marksman.enable = true;
        yamlls.enable = true;
      };

      keymaps = {
        diagnostic = {
          "[d" = "goto_prev";
          "]d" = "goto_next";
        };
        lspBuf = {
          "gd" = "definition";
          "gD" = "declaration";
          "gi" = "implementation";
          "gr" = "references";
          "K" = "hover";
          "<leader>rn" = "rename";
          "<leader>ca" = "code_action";
        };
      };
    };

    # Telescope
    plugins.telescope = {
      enable = true;
      keymaps = {
        "<leader>ff" = "find_files";
        "<leader>fg" = "live_grep";
        "<leader>fb" = "buffers";
        "<leader>fh" = "help_tags";
        "<leader>fd" = "diagnostics";
      };
      extensions = {
        file-browser.enable = true;
        fzf-native.enable = true;
      };
    };

    # VimTeX
    plugins.vimtex = {
      enable = true;
      settings = {
        view_method = "zathura";
        compiler_method = "latexmk";
        compiler_latexmk = {
          continuous = 1;
          options = [
            "-pdf"
            "-interaction=nonstopmode"
            "-synctex=1"
          ];
        };
      };
    };    

    # Lualine
    plugins.lualine = {
      enable = true;
      settings = {
        options = {
          alwaysDivideMiddle = true;
          globalstatus = true;
          theme = "nord";
          icons_enabled = true;
          component_separators = {
            left = "";
            right = "";
          };
          section_separators = {
            left = "";
            right = "";
          };
        };
        sections = {
          lualine_a = [ "mode" ];
          lualine_b = [ "branch" "diff" "diagnostics" ];
          lualine_c = [ "filename" ];
          lualine_x = [ "fileformat" "filetype" ];
          lualine_z = [ ''"󰥔 " .. os.date("%R")'' ];
        };
      };
    };

    # Alpha
    plugins.alpha = {
      enable = true;
      theme = "startify";
    };

    # Settings    
    opts = {
      number = true;
      relativenumber = true;
      cursorline = true;
      guicursor = "";
      shiftwidth = 4;
      tabstop = 2;
      expandtab = true;
      smartindent = true;
      wrap = true;
      swapfile = false;
      backup = false;
      hlsearch = true;
      incsearch = true;
      termguicolors = true;
      linebreak = true;
      smartcase = true;
      scrolloff = 4;
      sidescrolloff = 4;
      splitbelow = true;
      splitright = true;
      numberwidth = 4;
      pumheight = 10;
      conceallevel = 0;
      signcolumn = "yes";
      cmdheight = 0;
      breakindent = true;
      updatetime = 50;
      timeoutlen = 300;
      undofile = true;
      encoding = "utf-8";
      fileencoding = "utf-8";            
    };

    # One line plugins
    plugins.noice.enable = true;
    plugins.none-ls.enable = true;
    plugins.comment.enable = true;
    plugins.gitsigns.enable = true;
    plugins.orgmode.enable = true;
    plugins.indent-blankline.enable = true;
    plugins.nvim-autopairs.enable = true;
    plugins.fugitive.enable = true;
    plugins.which-key.enable = true;
    plugins.colorizer.enable = true;            
    plugins.web-devicons.enable = true;
    plugins.cmp-vsnip.enable = true;
    plugins.presence.enable = true;
  };

  # Dependencies
  home.packages = with pkgs; [
    nixpkgs-fmt
    ripgrep
    nodejs
    rustup
    xclip
    nixd
    lua
    luarocks
    lua-language-server
    ruby
    rubyfmt
    python3
    go
    nil
    gcc
    ninja
    libverto
    sqlite
    aspell
    shellcheck
  ];

}
