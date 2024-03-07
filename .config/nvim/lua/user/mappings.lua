
local M ={}

M = {
    n = {
      ["<leader>fg"] = {
        "<cmd>Telescope live_grep_args<cr>",
        desc = "Live Grep(Args)",
      },
      ["<leader>fG"] = {
        "<cmd>Telescope live_grep_args --searchdir=--no-ignore<cr>",
        desc = "Live Grep( Args no-ignore)",
      },
      ["<leader>fp"] = {
        function() require("telescope").extensions.projects.projects {} end,
        desc = "Find projects",
      },
      ["<leader>fe"] = {
        "<cmd>Telescope file_browser<cr>",
        desc = "File explorer",
      },
  },
}

if vim.g.vscode then
  local vs_code_mappings = require("user.editors.vscode")
  M.n = vim.tbl_deep_extend("force", M.n, vs_code_mappings.n)
end

return M

