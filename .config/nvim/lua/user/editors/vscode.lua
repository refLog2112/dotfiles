if not vim.g.vscode then
    return
end

-- =============================================================================
-- VSCode Neovim
-- =============================================================================
local vscode = require('vscode-neovim')

-- =============================================================================
-- Plugins Disabled
-- =============================================================================

-- =============================================================================
-- VSCode Notify
-- =============================================================================
vim.notify = require('vscode-neovim').notify

-- =============================================================================
--  VSCode Keybindings
-- =============================================================================

local function split(direction, file)
    local dirCmdMap = {
        h = 'workbench.action.splitEditorLeft',
        l = 'workbench.action.splitEditorRight',
        j = 'workbench.action.splitEditorDown',
        k = 'workbench.action.splitEditorUp'
    }

    cmd = dirCmdMap[direction] or 'workbench.action.splitEditorRight'
    vscode.call(cmd)
end

local M = require("astronvim.utils").empty_map_table()

M.n["<leader>w"] = { function() vscode.call('workbench.action.files.save') end, desc = "Save" }
M.n["<leader>q"] = { function() vscode.call('workbench.action.closeActiveEditor') end, desc = "Quit" }
M.n["|"] = { function() split('l', '__vscode_new__') end, desc = "Vertical Split" }
M.n["\\"] = { function() split('j', '__vscode_new__') end, desc = "Horizontal Split" }
M.n["<leader>n"] = { function() vscode.call('workbench.action.files.newUntitledFile') end, desc = "New File" }
M.n["<leader>Q"] = { function() vscode.call('workbench.action.closeAllEditors') end, desc = "Quit all" }
M.n["<leader>pi"] = { function() require("lazy").install() end, desc = "Plugins Install" }
M.n["<leader>ps"] = { function() require("lazy").home() end, desc = "Plugins Status" }
M.n["<leader>pS"] = { function() require("lazy").sync() end, desc = "Plugins Sync" }
M.n["<leader>pu"] = { function() require("lazy").check() end, desc = "Plugins Check Updates" }
M.n["<leader>pU"] = { function() require("lazy").update() end, desc = "Plugins Update" }
M.n["<leader>kc"] = { "<Plug>VSCodeCommentaryLine", desc = "Toggle comment line" }
M.n["<leader>ku"] = { function() vscode.call("editor.action.removeCommentLine") end, desc = "Toggle comment line" }
M.n["<leader>kb"] = { function() vscode.call("editor.action.blockComment") end, desc = "Toggle comment block" }
M.n["gd"] = { function() vscode.call("editor.action.goToDeclaration") end, desc = "Go to Declaration" }
M.n["gr"] = { function() vscode.call("editor.action.goToReferences") end, desc = "Go to References" }
M.n["gi"] = { function() vscode.call("editor.action.goToImplementation") end, desc = "Go to Implementation" }
M.n["gh"] = { function() vscode.call("editor.action.showHover") end, desc = "Show Hover" }
M.n["<leader>tt"] = { function() vscode.call("workbench.action.terminal.toggleTerminal") end, desc = "Toggle Terminal" }
M.n["<leader>uw"] = { function() vscode.call("editor.action.toggleWordWrap") end, desc = "Toggle Word Wrap" }
M.n["<leader>fc"] = { function() vscode.call("workbench.action.findInFiles",
        { args = { query = vim.fn.expand("<cword>") } }) end, desc = "Find word under cursor" }
M.n["<leader>fw"] = { function() vscode.call("workbench.action.findInFiles") end, desc = "Find word" }
M.n["<leader>f/"] = { function() vscode.call("editor.action.startFindReplaceAction") end, desc = "Find in file" }
M.n["<leader>o"] = { function() vscode.call("workbench.view.explorer") end, desc = "Toggle File Explorer" }
M.n["<leader>e"] = { function() vscode.call("workbench.action.toggleSidebarVisibility") end, desc = "Toggle File Explorer" }
M.n["<leader>ff"] = { function() vscode.call("workbench.action.quickOpen") end, desc = "Quick Open" }
M.n["<leader>fr"] = { function() vscode.call("workbench.action.quickOpenRecent") end, desc = "Quick Open Recent" }
M.n["<leader>ft"] = { function() vscode.call("workbench.action.selectTheme") end, desc = "Change Theme" }
M.n["<leader>fs"] = { function() vscode.call("workbench.action.gotoSymbol") end, desc = "Search Symbol" }
M.n["<leader>fS"] = { function() vscode.call("workbench.action.showAllSymbols") end, desc = "Workspace Symbols" }
M.n["<leader>fg"] = { function() vscode.call("editor.action.referenceSearch.trigger") end, desc = "Find References" }
M.n["<leader>gg"] = { function() vscode.call("workbench.view.scm") end, desc = "Show source control" }
M.n["<leader>x"] = {
    function()
        vscode.call("workbench.actions.view.problems")
    end,
    desc = "Show Trouble list"
}



return M

