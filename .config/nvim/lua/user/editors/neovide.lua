-- Font
vim.o.guifont = "RecMonoCustom Nerd Font:h20.0"

-- Transparency
-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
--

local alpha = function() return string.format("%x", math.floor((255 * vim.g.transparency) or 0.8)) end

vim.g.transparent_enabled = true
vim.g.transparency = 0.2
vim.g.neovide_transparency = 0.9
vim.g.neovide_window_blurred = true
vim.g.neovide_floating_blur_amount_x = 1.0
vim.g.neovide_floating_blur_amount_y = 1.0
--
-- Shadows
vim.g.neovide_floating_shadow = true
vim.g.neovide_floating_z_height = 10
vim.g.neovide_light_angle_degrees = 45
vim.g.neovide_light_radius = 5

-- Other
vim.g.neovide_refresh_rate = 120
vim.g.neovide_unlink_border_highlights = true

vim.g.neovide_no_idle = false
vim.g.neovide_fullscreen = false

local map = vim.keymap
map.set({ "n" }, "<C-=>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
map.set({ "n" }, "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
map.set({ "n" }, "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>")
