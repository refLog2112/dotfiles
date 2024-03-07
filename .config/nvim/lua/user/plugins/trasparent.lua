local prefix = "<leader>u"
return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  config = function()
    local transparent = require "transparent"
    transparent.setup {
      extra_groups = {
        "NormalFloat",
        "NvimTreeNormal",
      },
      exclude_groups = {
        "CursorLine",
        "NeoTreeFloatBorder",
        "NeoTreeFloatTitle",
        "NeoTreeTitleBar",
        "NeoTreeWinSeparator",
      },
    }
    transparent.clear_prefix "BufferLine"
    transparent.clear_prefix "NeoTree"
    -- transparent.clear_prefix "lualine"
    transparent.clear_prefix "heirline"
  end,
  keys = {
    { prefix .. "T", "<cmd>TransparentToggle<CR>", desc = "Toggle transparency" },
  },
}
