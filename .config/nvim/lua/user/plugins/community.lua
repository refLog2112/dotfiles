return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  { import = "astrocommunity.colorscheme.sonokai" },
  {
    "sainnhe/sonokai",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.sonokai_style = "andromeda"
      vim.g.sonokai_enable_italic = 1
      vim.g.sonokai_disable_italic_comment = 1
      vim.g.sonokai_transparent_background = 1
    end,
  },
  { import = "astrocommunity.colorscheme.fluormachine-nvim" },
  {
    "maxmx03/fluoromachine.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("fluoromachine").setup {
        transparent = "full",
        glow = false,
        theme = "retrowave",
        brightness = 0.15,
      }
    end,
  },
  { import = "astrocommunity.utility.telescope-live-grep-args-nvim" },
  { import = "astrocommunity.fuzzy-finder.telescope-zoxide" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.colorscheme.sonokai" },
  { import = "astrocommunity.colorscheme.rose-pine" },
  {
    "rose-pine/neovim",
    lazy = false,
    priority = 1000,
    config = function()
      require("rose-pine").setup {
        variant = "dawn",
        dark_variant = "moon",
        styles = {
          bold = true,
          italic = true,
          transparency = true,
        },
      }
    end,
  },
  { import = "astrocommunity.colorscheme.nord-nvim" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.editing-support.comment-box-nvim" },
  { import = "astrocommunity.syntax.vim-easy-align" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.editing-support.vim-move" },
  { import = "astrocommunity.editing-support.telescope-undo-nvim" },
  -- { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
  -- { import = "astrocommunity.workflow.hardtime-nvim" },
  { import = "astrocommunity.bars-and-lines.dropbar-nvim" },
  { import = "astrocommunity.bars-and-lines.lualine-nvim" },
  { import = "astrocommunity.terminal-integration.vim-tmux-yank" },
}
