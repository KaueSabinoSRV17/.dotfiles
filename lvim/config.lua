-- 
-- !
-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {"Pocco81/auto-save.nvim",
    config = function ()
      require("auto-save").setup{}
    end},
  {'christoomey/vim-tmux-navigator'},
  {'windwp/nvim-ts-autotag',
    config = function ()
      require('nvim-ts-autotag').setup()
      require'nvim-treesitter.configs'.setup {
        autotag = {
          enable = true,
          enable_rename = true,
          enable_close = true,
          enable_close_on_slash = false,
          filetypes = {
            'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx', 'rescript',
            'xml',
            'php',
            'markdown',
            'astro', 'glimmer', 'handlebars', 'hbs'
          },
        }
      }
    end
  },
  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = true,
  }
}

lvim.colorscheme = "catppuccin-macchiato"
lvim.transparent_window = true
lvim.builtin.lualine.active = false -- Removing status bar

vim.opt.relativenumber = true
vim.opt.laststatus = 0

-- True colors for TMUX
vim.o.termguicolors = true
