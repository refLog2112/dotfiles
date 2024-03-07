local function set_trasparent_mode()
  if vim.g.colors_name == "gruvbox-baby" then return 1 end

  return 0
end

local M = {
  g = {
    gruvbox_baby_transparent_mode = set_trasparent_mode,
    neo_tree_window_pos = "right",
  },
  o ={}
}

if vim.g.vscode then
  local o = {
    showmode = true,
    undofile = false,
    showcmd = true,
    undodir = vim.fn.stdpath("state") .. "/vscode_undo",
  }
  M.g = vim.tbl_deep_extend("force", M.o, o)
end

return M