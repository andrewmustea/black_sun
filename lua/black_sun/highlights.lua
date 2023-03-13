-- highlights.lua
--

local api = vim.api

local c = require("black_sun.colors")

local M = { }

local function highlight(name, values)
  api.nvim_command(string.format("highlight %s guifg=%s guibg=%s guisp=%s gui=%s",
                                 name,
                                 values.fg or "none",
                                 values.bg or "none",
                                 values.sp or "none",
                                 values.fmt or "none"))
end

local function link_highlight(name, link)
  api.nvim_command(string.format("highlight link %s %s", name, link))
end

local function clear_highlight(name)
  api.nvim_command(string.format("highlight clear %s", name))
end

function M.setup()
  -- normal
  highlight("Normal", { fg = c.black, bg = c.black })
  link_highlight("NormalFloat", "Pmenu")
  clear_highlight("NormalNC")

  -- visual
  highlight("Visual", { fg = "NONE", bg = c.midnight })
  clear_highlight("VisualNos")

  -- windows
  highlight("VertSplit", { fg = c.teal_gray, bg = "NONE" })
  link_highlight("WinSeparator", "VertSplit")
  clear_highlight("WinBar")
  clear_highlight("WinBarNC")

  -- lines and columns
  highlight("ColorColumn",  { fg = "NONE",     bg = c.gray10 })
  highlight("FoldColumn",   { fg = c.grayAA,   bg = c.gray40 })
  highlight("Folded",       { fg = c.midnight, bg = c.gray88, fmt = "standout" })
  highlight("LineNr",       { fg = c.gray40,   bg = "NONE" })
  highlight("SignColumn",   { fg = "NONE",     bg = c.black })
  highlight("QuickFixLine", { fg = "NONE",     bg = c.gray20 })
  link_highlight("LineNrAbove", "LineNr")
  link_highlight("LineNrBelow", "LineNr")

  -- status line
  highlight("ModeMsg",      { fg = c.sage,   bg = "NONE" })
  highlight("StatusLine",   { fg = c.grayAA, bg = "NONE" })
  highlight("StatusLineNC", { fg = c.gray50, bg = "NONE" })

  -- tabline
  highlight("TabLine",     { fg = c.blue_gray, bg = c.gray15 })
  highlight("TabLineFill", { fg = c.gray26,    bg = c.black })
  highlight("TabLineSel",  { fg = c.grayAA,    bg = c.dark_blue })

  -- prompts
  highlight("Error",      { fg = c.black,      bg = c.red })
  highlight("MoreMsg",    { fg = c.sage,       bg = "NONE" })
  highlight("Question",   { fg = c.sage,       bg = "NONE" })
  highlight("WarningMsg", { fg = c.orange,     bg = "NONE" })
  link_highlight("ErrorMsg", "Error")
  link_highlight("MsgSeparator", "StatusLine")
  clear_highlight("MsgArea")

  -- cursor
  highlight("Conceal", { fg = c.grayAA,     bg = "NONE" })
  highlight("Cursor", { fg = c.grayAA,     bg = "NONE" })
  highlight("CursorColumn", { fg = "NONE",       bg = c.teal_gray })
  highlight("CursorLine", { fg = "NONE",       bg = c.teal_gray })
  highlight("CursorLineConceal", { fg = c.red_orange, bg = c.teal_gray })
  highlight("CursorLineNr", { fg = c.grayAA,     bg = c.teal_gray })
  highlight("TermCursor", { fg = c.black,      bg = c.grayAA })
  link_highlight("CursorLineSign", "SignColumn")
  link_highlight("lCursor",        "Cursor")
  clear_highlight("CursorIM")
  clear_highlight("TermCursorNC")

  -- searching
  highlight("Search", { fg = c.black, bg = c.purple })
  highlight("IncSearch", { fg = c.black, bg = c.lavendar })
  link_highlight("Substitute", "Search")
  clear_highlight("CurSearch")

  -- comments
  highlight("Comment", { fg = c.cobalt, bg = "NONE" })

  -- constants
  highlight("Boolean", { fg = c.blue,     bg = "NONE" })
  highlight("Character", { fg = c.sage,     bg = "NONE" })
  highlight("Constant", { fg = c.sky_blue, bg = "NONE" })
  highlight("String", { fg = c.sage,     bg = "NONE" })
  link_highlight("Float",  "Constant")
  link_highlight("Number", "Constant")

  -- identifiers
  highlight("Function", { fg = c.magenta,  bg = "NONE" })
  highlight("Identifier", { fg = c.sky_blue, bg = "NONE" })

  -- statements
  highlight("Conditional", { fg = c.blue,       bg = "NONE" })
  highlight("Operator", { fg = c.grayAA,     bg = "NONE" })
  highlight("Repeat", { fg = c.blue,       bg = "NONE" })
  highlight("Statement", { fg = c.red_orange, bg = "NONE" })
  link_highlight("Exception", "Statement")
  link_highlight("Keyword",   "Statement")
  link_highlight("Label",     "Statement")

  -- preprocessor
  highlight("Define", { fg = c.denim,     bg = "NONE" })
  highlight("Include", { fg = c.turquoise, bg = "NONE" })
  highlight("Macro", { fg = c.denim,     bg = "NONE" })
  highlight("PreCondit", { fg = c.denim,     bg = "NONE" })
  highlight("PreProc", { fg = c.red,       bg = "NONE" })

  -- types
  highlight("StorageClass", { fg = c.magenta,     bg = "NONE" })
  highlight("Structure", { fg = c.red_orange,  bg = "NONE" })
  highlight("Type", { fg = c.blue,        bg = "NONE" })
  highlight("Typedef", { fg = c.red_orange,  bg = "NONE" })

  -- special
  highlight("Ignore", { fg = c.gray50,     bg = "NONE" })
  highlight("MatchParen", { fg = c.grayAA,     bg = "NONE", fmt = "underline" })
  highlight("Special", { fg = c.red,        bg = "NONE" })
  highlight("SpecialChar", { fg = c.sage,       bg = "NONE", fmt = "underline" })
  highlight("Title", { fg = c.red_orange, bg = "NONE" })
  highlight("Todo", { fg = c.gray88,     bg = "NONE", fmt = "bold" })
  highlight("Underlined", { fg = c.sky_blue,   bg = "NONE", fmt = "underline" })
  link_highlight("Debug",          "Special")
  link_highlight("Delimitter",     "Special")
  link_highlight("SpecialComment", "Special")
  link_highlight("Tag",            "Special")

  -- nontext
  highlight("NonText", { fg = c.gray50,  bg = "NONE", fmt = "NONE" })
  highlight("SpecialKey", { fg = c.magenta, bg = "NONE", fmt = "NONE" })
  link_highlight("EndOfBuffer", "NonText")
  link_highlight("Whitespace",  "NonText")

  -- spelling
  highlight("SpellBad", { fg = c.salmon,     bg = "NONE", fmt = "underline" })
  highlight("SpellCap", { fg = c.salmon,     bg = "NONE", fmt = "underline" })
  highlight("SpellLocal", { fg = c.red_orange, bg = "NONE", fmt = "underline" })
  highlight("SpellRare", { fg = c.emerald,    bg = "NONE", fmt = "underline" })

  -- diff
  highlight("DiffAdd", { fg = c.black, bg = c.dark_green })
  highlight("DiffChange", { fg = c.black, bg = c.deep_blue })
  highlight("DiffDelete", { fg = c.black, bg = c.dark_red })
  highlight("DiffText", { fg = c.black, bg = c.denim })

  -- menus
  highlight("Pmenu", {fg = c.grayAA, bg = c.gray26 })
  highlight("PmenuSbar", {fg = "NONE",   bg = c.gray40 })
  highlight("PmenuSel", {fg = c.grayAA, bg = c.midnight })
  highlight("PmenuThumb", {fg = "NONE",   bg = c.gray60 })
  highlight("WildMenu", {fg = c.black,  bg = c.deep_blue })

  -- directories
  highlight("Directory", { fg = c.blue, bg = "NONE" })

  -- diagnostics
  highlight("DiagnosticError", { fg = c.bright_red, bg = "NONE" })
  highlight("DiagnosticWarn", { fg = c.orange,     bg = "NONE" })
  highlight("DiagnosticInfo", { fg = c.light_blue, bg = "NONE" })
  highlight("DiagnosticHint", { fg = c.grayAA,     bg = "NONE" })
  highlight("DiagnosticUnderlineError", { fg = "NONE",       bg = "NONE", fmt = "underline" })
  highlight("DiagnosticUnderlineWarn", { fg = "NONE",       bg = "NONE", fmt = "underline" })
  highlight("DiagnosticUnderlineInfo", { fg = "NONE",       bg = "NONE", fmt = "underline" })
  highlight("DiagnosticUnderlineHint", { fg = "NONE",       bg = "NONE", fmt = "underline" })
  link_highlight("DiagnosticFloatingError",    "DiagnosticError")
  link_highlight("DiagnosticFloatingHint",     "DiagnosticHint")
  link_highlight("DiagnosticFloatingInfo",     "DiagnosticInfo")
  link_highlight("DiagnosticFloatingWarn",     "DiagnosticWarn")
  link_highlight("DiagnosticSignError",        "DiagnosticError")
  link_highlight("DiagnosticSignHint",         "DiagnosticHint")
  link_highlight("DiagnosticSignInfo",         "DiagnosticInfo")
  link_highlight("DiagnosticSignWarn",         "DiagnosticWarn")
  link_highlight("DiagnosticVirtualTextError", "DiagnosticError")
  link_highlight("DiagnosticVirtualTextHint",  "DiagnosticHint")
  link_highlight("DiagnosticVirtualTextInfo",  "DiagnosticInfo")
  link_highlight("DiagnosticVirtualTextWarn",  "DiagnosticWarn")

  -- redrawdebug
  highlight("RedrawDebugNormal", { fg = c.black, bg = c.gray88 })
  highlight("RedrawDebugClear", { fg = c.black, bg = c.yellow })
  link_highlight("RedrawDebugComposed",  "DiffAdd")
  link_highlight("RedrawDebugRecompose", "DiffDelete")

  -- nvim
  link_highlight("NvimInternalError", "Error")

  -- vimscript
  link_highlight("vimFunction", "Function")

  -- sh
  link_highlight("shDoubleQuote", "String")
  highlight("shShellVariables", { fg = c.red, bg = "NONE" })
  highlight("shDeref", { fg = c.red, bg = "NONE" })

  -- GitGutter/gitsigns
  highlight("GitGutterAdd", { fg = c.sage,     bg = "NONE" })
  highlight("GitGutterChange", { fg = c.sky_blue, bg = "NONE" })
  highlight("GitGutterDelete", { fg = c.red,      bg = "NONE" })
  highlight("GitGutterChangeDelete", { fg = c.red,      bg = "NONE" })

  -- nvim-tree
  highlight("NvimTreeWindowPicker", { fg = c.magenta, bg = c.gray15 })
  highlight("NvimTreeRootFolder", { fg = c.denim,   bg = "NONE" })

  -- nvim-treesitter
  link_highlight("bashTSVariable", "shShellVariables")
  highlight("bashTSFuncBuiltin", { fg = c.red_orange, bg = "NONE" })
  highlight("vimTSNamespace", { fg = c.blue,       bg = "NONE" })
  highlight("vimTSStringSpecial", { fg = c.denim,      bg = "NONE" })
end

return M
