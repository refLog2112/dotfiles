function buffer_line_bg()
  flavour = flavour or require("catppuccin").flavour

  local _O, _C, _U = O, C, U -- Borrowing global var (setfenv doesn't work with require)
  O = require("catppuccin").options
  C = require("catppuccin.palettes").get_palette(flavour)
  U = require "catppuccin.utils.colors"

  return U.darken(C.surface0, 0.85, C.base)
end

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup {
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = "latte",
          dark = "mocha",
        },
        transparent_background = vim.g.transparent_enabled, -- disables setting the background color.
        show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
        term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
        dim_inactive = {
          enabled = true, -- dims the background color of inactive window
          shade = "dark",
          percentage = 0.25, -- percentage of the shade to apply to the inactive window
        },
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        no_underline = false, -- Force no underline
        styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = { "italic" }, -- Change the style of comments
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
          -- miscs = {}, -- Uncomment to turn off hard-coded styles
        },
        color_overrides = {
          macchiato = {
            base = "#1a1c2a",
            mantle = "#141620",
            crust = "#0e0f16",
            text = "#F4CDE9",
            subtext1 = "#DEBAD4",
            subtext0 = "#C8A6BE",
            overlay2 = "#B293A8",
            overlay1 = "#9C7F92",
            overlay0 = "#866C7D",
            surface2 = "#705867",
            surface1 = "#5A4551",
            surface0 = "#44313B",
            rosewater = "#efc9c2",
            flamingo = "#ebb2b2",
            pink = "#f2a7de",
            mauve = "#b889f4",
            red = "#ea7183",
            maroon = "#ea838c",
            peach = "#f39967",
            yellow = "#eaca89",
            green = "#96d382",
            teal = "#78cec1",
            sky = "#91d7e3",
            sapphire = "#68bae0",
            blue = "#739df2",
            lavender = "#a0a8f6",
          },
          mocha = {
              rosewater = "#e28c86",
              flamingo = "#ff6f64",
              pink = "#c777a1",
              -- mauve = "#a85b9b",
              mauve = "#b889f4",
              red = "#d64042",
              maroon = "#d8585a",
              peach = "#d97166",
              yellow = "#c8965e",
              green = "#9fbf6e",
              teal = "#5aa975",
              sky = "#69a89e",
              sapphire = "#4a8d88",
              blue = "#488aa7",
              lavender = "#d9c8c9",
              text = "#f3efcc",
              subtext1 = "#d8dfcb",
              subtext0 = "#c3bfa2",
              overlay2 = "#adb6ad",
              overlay1 = "#949f94",
              overlay0 = "#7d785c",
              surface2 = "#696f5d",
              surface1 = "#515d62",
              surface0 = "#46524b",
              base = "#2b3034",
              mantle = "#1e2325",
              crust = "#1a1e1c",
          },  
        },
        custom_highlights = {
          -- disable italics  for treesitter highlights
          TabLineFill = { link = "StatusLine" },
          LspInlayHint = { style = { "italic" } },
          ["@parameter"] = { style = {} },
          ["@type.builtin"] = { style = {} },
          ["@namespace"] = { style = {} },
          ["@text.uri"] = { style = { "underline" } },
          ["@tag.attribute"] = { style = {} },
          ["@tag.attribute.tsx"] = { style = {} },
          CursorLine = { bg = buffer_line_bg(), style = { "bold" } }, -- selected line background
          NeoTreeFloatWin = { bg = C.surface0 },
        },
        integrations = {
          cmp = true,
          alpha = false,
          dashboard = false,
          flash = true,
          nvimtree = false,
          ts_rainbow = false,
          ts_rainbow2 = false,
          barbecue = false,
          indent_blankline = true,
          navic = false,
          dropbar = true,
          aerial = true,
          dap = true,
          dap_ui = true,
          headlines = true,
          mason = true,
          native_lsp = { enabled = true, inlay_hints = { background = false } },
          neogit = true,
          neotree = true,
          noice = true,
          notify = false,
          sandwich = true,
          semantic_tokens = true,
          symbols_outline = true,
          telescope = { enabled = true },
          which_key = true,
          -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
      }
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    optional = true,
    opts = {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    },
  },
}
