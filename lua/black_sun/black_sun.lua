#!/usr/bin/env lua

--
-- lua/black_sun/black_sun.lua
--


-- settings
-- --------

-- clear existing highlights
vim.cmd("highlight clear")

-- reset syntax if already enabled
if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

-- colorscheme name
vim.g.colors_name = "black_sun"

-- set background color
vim.o.background = "dark"


-- colors
-- ------

-- blacks
local black      = "#0c0c0c"

-- grays
local gray10     = "#101010"
local gray15     = "#151515"
local gray20     = "#202020"
local gray26     = "#262626"
-- local gray30     = "#303030"
local gray40     = "#404040"
local gray50     = "#505050"
local gray60     = "#606060"
local gray88     = "#888888"
local grayAA     = "#aaaaaa"
local teal_gray  = "#151a1e"
local blue_gray  = "#4f5b66"

-- reds
local red        = "#b02828"
local bright_red = "#dd2020"
local dark_red   = "#821717"
local salmon     = "#d16969"

-- blues
local blue       = "#0078c8"
local midnight   = "#253340"
local dark_blue  = "#042a4a"
local deep_blue  = "#154c79"
local denim      = "#127da1"
local cobalt     = "#0040bb"
-- local aquamrine  = "#7fffd4"
local sky_blue   = "#36a3d9"
local light_blue = "#60a0c0"
-- local cyan       = "#00ffff"

-- purples/pinks
local purple     = "#8030e0"
local magenta    = "#b030a0"
local lavendar   = "#646695"

-- greens
-- local green      = "#006000"
local dark_green = "#174f17"
local sage       = "#508040"
local emerald    = "#109040"
local turquoise  = "#1f9388"

-- oranges
local orange     = "#e89000"
local red_orange = "#f06722"
local gold       = "#996600"

-- yellows
local yellow     = "#9c9c00"


-- color assignments
-- -----------------

local function set_hl(hl, tbl)
  vim.api.nvim_set_hl(0, hl, tbl)
end

local function clear_hl(hl)
  set_hl(hl, { })
end

local function link_hl(hl, hl_link)
  set_hl(hl, { link = hl_link })
end

-- normal
set_hl("Normal", { fg = grayAA, bg = black })
link_hl("NormalFloat", "Pmenu")
clear_hl("NormalNC")

-- visual
set_hl("Visual", { bg = midnight })
clear_hl("VisualNos")

-- windows
set_hl("VertSplit", { fg = teal_gray })
link_hl("WinSeparator", "VertSplit")
clear_hl("WinBar")
clear_hl("WinBarNC")

-- lines and columns
set_hl("ColorColumn", { bg = gray10 })
set_hl("FoldColumn", { fg = grayAA, bg = gray40 })
set_hl("Folded", { fg = midnight, bg = gray88, standout = true })
set_hl("LineNr", { fg = gray40 })
set_hl("SignColumn", { bg = black })
set_hl("QuickFixLine", { bg = gray20 })
link_hl("LineNrAbove", "LineNr")
link_hl("LineNrBelow", "LineNr")

-- status line
set_hl("ModeMsg", { fg = sage })
set_hl("StatusLine", { fg = grayAA })
set_hl("StatusLineNC", { fg = gray50 })

-- tabline
set_hl("TabLine", { fg = blue_gray, bg = gray15 })
set_hl("TabLineFill", { fg = gray26, bg = black })
set_hl("TabLineSel", { fg = grayAA, bg = dark_blue })

-- prompts
set_hl("Error", { fg = black, bg = red })
set_hl("MoreMsg", { fg = sage })
set_hl("Question", { fg = sage })
set_hl("WarningMsg", { fg = orange })
link_hl("ErrorMsg", "Error")
link_hl("MsgSeparator", "StatusLine")
clear_hl("MsgArea")

-- cursor
set_hl("Conceal", { fg = grayAA })
set_hl("Cursor", { fg = grayAA })
set_hl("CursorColumn", { bg = teal_gray })
set_hl("CursorLine", { bg = teal_gray })
set_hl("CursorLineConceal", { fg = red_orange, bg = teal_gray })
set_hl("CursorLineNr", { fg = grayAA, bg = teal_gray })
set_hl("TermCursor", { fg = black, bg = grayAA })
link_hl("CursorLineSign", "SignColumn")
link_hl("lCursor", "Cursor")
clear_hl("CursorIM")
clear_hl("TermCursorNC")

-- searching
set_hl("Search", { fg = purple, bg = black, reverse = true })
set_hl("IncSearch", { fg = lavendar, bg = black, reverse = true })
link_hl("Substitute", "Search")
clear_hl("CurSearch")

-- comments
set_hl("Comment", { fg = cobalt })

-- constants
set_hl("Boolean", { fg = blue })
set_hl("Character", { fg = sage })
set_hl("Constant", { fg = sky_blue })
set_hl("String", { fg = sage })
link_hl("Float", "Constant")
link_hl("Number", "Constant")

-- identifiers
set_hl("Function", { fg = magenta })
set_hl("Identifier", { fg = sky_blue })

-- statements
set_hl("Conditional", { fg = blue })
set_hl("Operator", { fg = grayAA })
set_hl("Repeat", { fg = blue })
set_hl("Statement", { fg = red_orange })
link_hl("Exception", "Statement")
link_hl("Keyword", "Statement")
link_hl("Label", "Statement")

-- preprocessor
set_hl("Define", { fg = denim })
set_hl("Include", { fg = turquoise })
set_hl("Macro", { fg = denim })
set_hl("PreCondit", { fg = denim })
set_hl("PreProc", { fg = red })

-- types
set_hl("StorageClass", { fg = magenta })
set_hl("Structure", { fg = red_orange })
set_hl("Type", { fg = blue })
set_hl("Typedef", { fg = red_orange })

-- special
set_hl("Ignore", { fg = gray50 })
set_hl("MatchParen", { fg = grayAA, underline = true })
set_hl("Special", { fg = red })
set_hl("SpecialChar", { fg = sage, underline = true })
set_hl("Title", { fg = red_orange })
set_hl("Todo", { fg = gray88, bold = true })
set_hl("Underlined", { fg = sky_blue, underline = true })
link_hl("Debug", "Special")
link_hl("Delimiter", "Special")
link_hl("SpecialComment", "Special")
link_hl("Tag", "Special")

-- nontext
set_hl("NonText", { fg = gray50 })
set_hl("SpecialKey", { fg = magenta })
link_hl("EndOfBuffer", "NonText")
link_hl("Whitespace", "NonText")

-- spelling
set_hl("SpellBad", { fg = salmon, underline = true })
set_hl("SpellCap", { fg = salmon, underline = true })
set_hl("SpellLocal", { fg = red_orange, underline = true })
set_hl("SpellRare", { fg = emerald, underline = true })

-- diff
set_hl("DiffAdd", { fg = black, bg = dark_green })
set_hl("DiffChange", { fg = black, bg = deep_blue })
set_hl("DiffDelete", { fg = black, bg = dark_red })
set_hl("DiffText", { fg = black, bg = denim })

-- menus
set_hl("Pmenu", { fg = grayAA, bg = gray26 })
set_hl("PmenuSbar", { bg = gray40 })
set_hl("PmenuSel", { fg = grayAA, bg = midnight })
set_hl("PmenuThumb", { bg = gray60 })
set_hl("WildMenu", { fg = black, bg = deep_blue })

-- directories
set_hl("Directory", { fg = blue })

-- diagnostics
set_hl("DiagnosticError", { fg = bright_red })
set_hl("DiagnosticWarn", { fg = orange })
set_hl("DiagnosticInfo", { fg = light_blue })
set_hl("DiagnosticHint", { fg = grayAA })
set_hl("DiagnosticUnderlineError", { underline = true })
set_hl("DiagnosticUnderlineWarn", { underline = true })
set_hl("DiagnosticUnderlineInfo", { underline = true })
set_hl("DiagnosticUnderlineHint", { underline = true })
link_hl("DiagnosticFloatingError", "DiagnosticError")
link_hl("DiagnosticFloatingHint", "DiagnosticHint")
link_hl("DiagnosticFloatingInfo", "DiagnosticInfo")
link_hl("DiagnosticFloatingWarn", "DiagnosticWarn")
link_hl("DiagnosticSignError", "DiagnosticError")
link_hl("DiagnosticSignHint", "DiagnosticHint")
link_hl("DiagnosticSignInfo", "DiagnosticInfo")
link_hl("DiagnosticSignWarn", "DiagnosticWarn")
link_hl("DiagnosticVirtualTextError", "DiagnosticError")
link_hl("DiagnosticVirtualTextHint", "DiagnosticHint")
link_hl("DiagnosticVirtualTextInfo", "DiagnosticInfo")
link_hl("DiagnosticVirtualTextWarn", "DiagnosticWarn")

-- redrawdebug
set_hl("RedrawDebugNormal", { fg = black, bg = gray88 })
set_hl("RedrawDebugClear", { fg = black, bg = yellow })
link_hl("RedrawDebugComposed", "DiffAdd")
link_hl("RedrawDebugRecompose", "DiffDelete")

-- nvim
link_hl("NvimInternalError", "Error")

-- vimscript
link_hl("vimFunction", "Function")

-- sh
set_hl("shShellVariables", { fg = red })
set_hl("shDeref", { fg = red })
link_hl("shDoubleQuote", "String")
link_hl("@variable.builtin.bash", "Identifier")

-- GitGutter/gitsigns
set_hl("GitGutterAdd", { fg = sage })
set_hl("GitGutterChange", { fg = sky_blue })
set_hl("GitGutterDelete", { fg = red })
set_hl("GitGutterChangeDelete", { fg = red })

-- ale
set_hl("ALEInfoSign", { fg = deep_blue, reverse = true })
set_hl("ALEStyleWarningSign", { fg = gold, reverse = true })
set_hl("ALEWarningSign", { fg = gold, reverse = true })

-- nvim-tree
set_hl("NvimTreeWindowPicker", { fg = magenta, bg = gray15 })
set_hl("NvimTreeRootFolder", { fg = denim })

-- nvim-treesitter
set_hl("bashTSFuncBuiltin", { fg = red_orange })
set_hl("vimTSNamespace", { fg = blue })
set_hl("vimTSStringSpecial", { fg = denim })
link_hl("bashTSVariable", "shShellVariables")
link_hl("@variable", "Identifier")

-- python
link_hl("@string.documentation.python", "Comment")
