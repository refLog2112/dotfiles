-- Using Lualine as the statusline.

local M = {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    enabled = function()
      return not vim.g.vscode
    end,
    config = function() require "user.plugins.configs.statusline" end,
  },
  {
    "rebelot/heirline.nvim",
    optional = true,
    enabled = function ()
      return not vim.g.vscode
    end,
    opts = function(_, opts) opts.statusline = nil end,
  }, -- Custom mode names.
}

return M
