local colors = {
  white             = '#FFFFFF',
  black             = '#000000',
  accent            = '#FFCC66',
  bg                = '#212733',
  fg                = '#f4f4f1',
  ui                = '#707A8C',
  tag               = '#5CCFE6',
  func              = '#FFBB33',
  entity            = '#73D0FF',
  string            = '#74c365',
  -- string            = '#AFEF76',
  regexp            = '#95E6CB',
  markup            = '#F28779',
  keyword           = '#FFF123',
  -- keyword           = '#FF851A',
  special           = '#FFE6B3',
  comment           = '#5C6773',
  constant          = '#FFCC66',
  operator          = '#F29E74',
  error             = '#FF3333',
  lsp_parameter     = '#D3B8F9',
  line              = '#191E2A',
  panel_bg          = '#232834',
  panel_shadow      = '#141925',
  panel_border      = '#101521',
  gutter_normal     = '#404755',
  gutter_active     = '#5F687A',
  selection_bg      = '#33415E',
  selection_inactive= '#323A4C',
  selection_border  = '#232A4C',
  guide_active      = '#576070',
  guide_normal      = '#383E4C',
  vcs_added         = '#A6CC70',
  vcs_modified      = '#77A8D9',
  vcs_removed       = '#F27983',
  vcs_added_bg      = '#313D37',
  vcs_removed_bg    = '#3E373A',
  fg_idle           = '#607080',
  warning           = '#FFA759',
}

local ayu_custom = {
  -- General.
  Normal = { fg = colors.fg, bg = colors.bg },
  ColorColumn = { bg = colors.line },
  CursorColumn = { bg = colors.line },
  CursorLine = { bg = colors.line },
  VertSplit = { fg = colors.panel_border, bg = colors.bg },
  Folded = { fg = colors.fg_idle, bg = colors.panel_bg },
  FoldColumn = { bg = colors.bg },
  SignColumn = { bg = colors.bg },
  WhichKeyFloat = { bg = colors.bg },

  -- Popup menu.
  NormalFloat = { bg = colors.bg },
  FloatBorder = { fg = colors.comment },
  FloatTitle = { fg = colors.fg },
  Cursor = { fg = colors.bg, bg = colors.fg },
  CursorLineNr = { fg = colors.accent, bg = colors.line },
  LineNr = { fg = colors.guide_normal },

  -- Status line.
  Directory = { fg = colors.func },
  ErrorMsg = { fg = colors.error },

  -- Gutter.
  MatchParen = { sp = colors.func, underline = true },
  ModeMsg = { fg = colors.string },
  MoreMsg = { fg = colors.string },
  NonText = { fg = colors.guide_normal },
  Pmenu = { fg = colors.fg, bg = colors.selection_inactive },
  PmenuSel = { fg = colors.fg, bg = colors.selection_inactive, reverse = true },
  Question = { fg = colors.string },
  Search = { fg = colors.bg, bg = colors.constant },
  CurSearch = { fg = colors.bg, bg = colors.special },
  IncSearch = { fg = colors.keyword, bg = colors.selection_inactive },
  SpecialKey = { fg = colors.selection_inactive },
  SpellCap = { sp = colors.tag, undercurl = true },
  SpellLocal = { sp = colors.keyword, undercurl = true },
  SpellBad = { sp = colors.error, undercurl = true },
  SpellRare = { sp = colors.regexp, undercurl = true },
  StatusLine = { fg = colors.fg, bg = colors.panel_bg },
  StatusLineNC = { fg = colors.fg_idle, bg = colors.panel_bg },
  WildMenu = { fg = colors.fg, bg = colors.markup },
  TabLine = { fg = colors.comment, bg = colors.panel_shadow },
  TabLineFill = { fg = colors.fg, bg = colors.panel_border },
  TabLineSel = { fg = colors.fg, bg = colors.bg },
  Title = { fg = colors.keyword },
  Visual = { bg = colors.selection_inactive },
  WarningMsg = { fg = colors.warning },

  Comment = { fg = colors.comment, italic = true },
  Constant = { fg = colors.constant },
  String = { fg = colors.string },
  Identifier = { fg = colors.entity },
  Function = { fg = colors.func, italic = true},
  Statement = { fg = colors.keyword },
  Operator = { fg = colors.operator },
  Exception = { fg = colors.markup },
  PreProc = { fg = colors.keyword },
  Type = { fg = colors.entity },
  Structure = { fg = colors.special },
  Special = { fg = colors.accent },
  Delimiter = { fg = colors.special },
  Underlined = { sp = colors.tag, underline = true },
  Ignore = { fg = colors.fg },
  Error = { fg = colors.white, bg = colors.error },
  Todo = { fg = colors.markup },
  qfLineNr = { fg = colors.keyword },
  qfError = { fg = colors.error },
  Conceal = { fg = colors.comment },
  CursorLineConceal = { fg = colors.guide_normal, bg = colors.line },

  DiffAdd = { bg = colors.vcs_added_bg },
  DiffAdded = { fg = colors.vcs_added },
  DiffDelete = { bg = colors.vcs_removed_bg },
  DiffRemoved = { fg = colors.vcs_removed },
  DiffText = { bg = colors.gutter_normal },
  DiffChange = { bg = colors.selection_inactive },

  -- LSP.
  DiagnosticError = { fg = colors.error },
  DiagnosticWarn = { fg = colors.keyword },
  DiagnosticInfo = { fg = colors.tag },
  DiagnosticHint = { fg = colors.regexp },

  DiagnosticUnderlineError = { sp = colors.error, undercurl = true },
  DiagnosticUnderlineWarn = { sp = colors.keyword, undercurl = true },
  DiagnosticUnderlineInfo = { sp = colors.tag, undercurl = true },
  DiagnosticUnderlineHint = { sp = colors.regexp, undercurl = true },

  -- Markdown.
  markdownCode = { fg = colors.special },

  -- TreeSitter.
  ['@property'] = { fg = colors.tag },
  ['@field'] = { fg = colors.tag },
  ['@parameter'] = { fg = colors.ui , italic = true},
  ['@namespace'] = { fg = colors.tag },
  ['@variable.builtin'] = { fg = colors.func, italic = true },
  ['@text.title'] = { fg = colors.keyword },
  ['@type.qualifier'] = { fg = colors.keyword, italic = true },
  ['@storageclass'] = { fg = colors.keyword },
  ['@tag'] = { fg = colors.keyword },
  ['@tag.attribute'] = { fg = colors.entity },
  ['@tag.delimiter'] = { link = 'Delimiter' },
  ['@variable'] = { fg = colors.fg },
  ['@macro'] = { fg = colors.vcs_modified },

  ['@function.call'] = { fg = colors.func},

  ['@keyword'] = { fg = colors.keyword},
  ['@keyword.return'] = { fg = colors.keyword},
  ['@include'] = { fg = colors.keyword, bold = true},

  ['@conditional']    = { fg = colors.keyword},
  ['@repeat']         = { fg = colors.keyword},


  ['@lsp.type.namespace'] = { link = '@namespace' },
  ['@lsp.type.type'] = { link = '@type' },
  ['@lsp.type.class'] = { link = '@type' },
  ['@lsp.type.enum'] = { link = '@type' },
  ['@lsp.type.interface'] = { link = '@type' },
  ['@lsp.type.struct'] = { link = '@structure' },
  ['@lsp.type.parameter'] = { fg = colors.ui  , italic = true},
  ['@lsp.type.field'] = { link = '@field' },
  ['@lsp.type.variable'] = { link = '@variable' },
  ['@lsp.type.property'] = { link = '@property' },
  ['@lsp.type.enumMember'] = { link = '@constant' },
  ['@lsp.type.function'] = { link = '@function' },
  ['@lsp.type.method'] = { link = '@method' },
  ['@lsp.type.macro'] = { link = '@macro' },
  ['@lsp.type.decorator'] = { link = '@function' },
  ['@lsp.mod.constant'] = { link = '@constant' },

  -- Gitsigns.
  GitSignsAddLn = { fg = colors.vcs_added },
  GitSignsDeleteLn = { fg = colors.vcs_removed },
  GitSignsChange = { fg = colors.vcs_modified },

  -- Telescope.
  TelescopePromptBorder = { fg = colors.accent },

  -- Cmp.
  CmpItemAbbrMatch = { fg = colors.keyword },
  CmpItemAbbrMatchFuzzy = { fg = colors.func },
  CmpItemKindText = { fg = colors.string },
  CmpItemKindMethod = { fg = colors.keyword },
  CmpItemKindFunction = { fg = colors.func },
  CmpItemKindConstructor = { fg = colors.keyword },
  CmpItemKindField = { fg = colors.entity },
  CmpItemKindVariable = { fg = colors.tag },
  CmpItemKindClass = { fg = colors.entity },
  CmpItemKindInterface = { fg = colors.entity },
  CmpItemKindModule = { fg = colors.keyword },
  CmpItemKindProperty = { fg = colors.keyword },
  CmpItemKindUnit = { fg = colors.constant },
  CmpItemKindValue = { fg = colors.constant },
  CmpItemKindEnum = { fg = colors.entity },
  CmpItemKindKeyword = { fg = colors.keyword },
  CmpItemKindSnippet = { fg = colors.regexp },
  CmpItemKindColor = { fg = colors.special },
  CmpItemKindFile = { fg = colors.special },
  CmpItemKindReference = { fg = colors.special },
  CmpItemKindFolder = { fg = colors.special },
  CmpItemKindEnumMember = { fg = colors.constant },
  CmpItemKindConstant = { fg = colors.constant },
  CmpItemKindStruct = { fg = colors.entity },
  CmpItemKindEvent = { fg = colors.tag },
  CmpItemKindOperator = { fg = colors.operator },
  CmpItemKindTypeParameter = { fg = colors.tag },
  CmpItemMenu = { fg = colors.comment },

  -- Word under cursor.
  CursorWord = { bg = colors.selection_inactive },
  CursorWord0 = { bg = colors.selection_inactive },
  CursorWord1 = { bg = colors.selection_inactive },

  -- Noice
  NoiceLspProgressTitle = { fg = colors.fg },
  NoiceLspProgressClient = { fg = colors.special },

  -- NvimTree.
  NvimTreeGitDirty = { fg = colors.accent },
  NvimTreeGitStaged = { fg = colors.vcs_modified },
  NvimTreeGitMerge = { fg = colors.error },
  NvimTreeGitNew = { fg = colors.vcs_added },
  NvimTreeGitDeleted = { fg = colors.vcs_removed },

  NvimTreeFolderName = { fg = colors.special },
  NvimTreeFolderIcon = { fg = colors.accent },
  NvimTreeOpenedFolderName = { fg = colors.special },
  NvimTreeRootFolder = { fg = colors.keyword },
  NvimTreeSpecialFile = { fg = colors.fg },
  NvimTreeExecFile = { fg = colors.fg },
  NvimTreeIndentMarker = { fg = colors.guide_normal },

  NvimTreeWindowPicker = { fg = colors.keyword, bg = colors.panel_border, bold = true },

  -- Neo-tree.
  NeoTreeRootName = { fg = colors.fg, bold = true },

  -- Indent blankline.
  IndentBlanklineContextChar = { fg = colors.comment },

  -- Neogit.
  NeogitDiffContextHighlight = { bg = colors.line },
  NeogitHunkHeader = { fg = colors.tag },
  NeogitHunkHeaderHighlight = { fg = colors.tag, bg = colors.line },
  NeogitDiffAddHighlight = { bg = colors.vcs_added_bg },
  NeogitDiffDeleteHighlight = { bg = colors.vcs_removed_bg },

  -- Hop.
  HopNextKey = { fg = colors.keyword, bold = true, underline = true },
  HopNextKey1 = { fg = colors.entity, bold = true, underline = true },
  HopNextKey2 = { fg = colors.tag },
  HopUnmatched = { fg = colors.comment },

  -- Leap.
  LeapMatch = { fg = colors.regexp, underline = true },
  LeapLabelPrimary = { fg = colors.bg, bg = colors.regexp },
  LeapLabelSecondary = { fg = colors.bg, bg = colors.entity },
  LeapLabelSelected = { fg = colors.bg, bg = colors.tag },

  -- LSP Signature.
  LspSignatureActiveParameter = { italic = true },

  -- Notify.
  NotifyERROR = { fg = colors.vcs_removed },
  NotifyWARN = { fg = colors.func },
  NotifyINFO = { fg = colors.vcs_added },
  NotifyDEBUG = { fg = colors.comment },
  NotifyTRACE = { fg = colors.vcs_modified },
  NotifyERRORTitle = { fg = colors.error },
  NotifyWARNTitle = { fg = colors.warning },
  NotifyINFOTitle = { fg = colors.string },
  NotifyDEBUGTitle = { fg = colors.ui },
  NotifyTRACETitle = { fg = colors.entity },

  -- Dap.
  NvimDapVirtualText = { fg = colors.regexp },

  -- DAP UI.
  DapUIScope = { fg = colors.func },
  DapUIType = { fg = colors.entity },
  DapUIDecoration = { fg = colors.tag },
  DapUIThread = { fg = colors.string },
  DapUIStoppedThread = { fg = colors.special },
  DapUISource = { fg = colors.regexp },
  DapUILineNumber = { fg = colors.constant },
  DapUIFloatBorder = { fg = colors.panel_border },
  DapUIWatchesEmpty = { fg = colors.warning },
  DapUIWatchesValue = { fg = colors.string },
  DapUIWatchesError = { fg = colors.error },
  DapUIBreakpointsPath = { fg = colors.regexp },
  DapUIBreakpointsInfo = { fg = colors.constant },
  DapUIBreakpointsCurrentLine = { fg = colors.constant, bold = true },

  -- Visual Multi.
  VM_Extend = { bg = colors.selection_inactive },
  VM_Cursor = { bg = colors.selection_inactive, sp = colors.fg, underline = true },
  VM_Insert = { sp = colors.fg, underline = true },
  VM_Mono = { fg = colors.bg, bg = colors.comment },
}

local M =   {
    "Shatur/neovim-ayu",
    config = function()
      require("ayu").setup {
        -- mirage = true,
        overrides = function()
          -- check if transparent is true
          if vim.g.transparent_enabled then
            -- ayu_custom.Normal = { bg = "None" }
            ayu_custom.ColorColumn = { bg = "None" }
            ayu_custom.SignColumn = { bg = "None" }
            ayu_custom.Folded = { bg = "None" }
            ayu_custom.FoldColumn = { bg = "None" }
            ayu_custom.CursorLine = { bg = "None" }
            ayu_custom.CursorColumn = { bg = "None" }
            ayu_custom.WhichKeyFloat = { bg = "None" }
            ayu_custom.VertSplit = { bg = "None" }
          end

          return ayu_custom
        end
      }
    end,
}

return M

