#!/usr/bin/env lua

--
-- lua/black_sun/black_sun.lua
--


-- settings
-- --------

-- set background color
vim.o.background = "dark"

-- clear existing highlights
vim.cmd("highlight clear")

-- reset syntax if already enabled
if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
end

-- set colorscheme name
vim.g.colors_name = "black_sun"

-- set terminal colors (if needed)
-- vim.o.t_Co = "256"


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

local highlights = {}

-- normal
highlights["Normal"] = { fg = grayAA, bg = black }
vim.cmd("highlight! link NormalFloat Pmenu")
vim.cmd("highlight! clear NormalNC")

-- visual
highlights["Visual"] = { bg = midnight }
vim.cmd("highlight! clear VisualNos")

-- windows
highlights["VertSplit"] = { fg = teal_gray }
vim.cmd("highlight! link WinSeparator VertSplit")
vim.cmd("highlight! clear WinBar")
vim.cmd("highlight! clear WinBarNC")

-- lines and columns
highlights["ColorColumn"] = { bg = gray10 }
highlights["FoldColumn"] = { fg = grayAA, bg = gray40 }
highlights["Folded"] = { fg = midnight, bg = gray88, standout = true }
highlights["LineNr"] = { fg = gray40 }
highlights["SignColumn"] = { bg = black }
highlights["QuickFixLine"] = { bg = gray20 }
vim.cmd("highlight! link LineNrAbove LineNr")
vim.cmd("highlight! link LineNrBelow LineNr")

-- status line
highlights["ModeMsg"] = { fg = sage }
highlights["StatusLine"] = { fg = grayAA }
highlights["StatusLineNC"] = { fg = gray50 }

-- tabline
highlights["TabLine"] = { fg = blue_gray, bg = gray15 }
highlights["TabLineFill"] = { fg = gray26, bg = black }
highlights["TabLineSel"] = { fg = grayAA, bg = dark_blue }

-- prompts
highlights["Error"] = { fg = black, bg = red }
highlights["MoreMsg"] = { fg = sage }
highlights["Question"] = { fg = sage }
highlights["WarningMsg"] = { fg = orange }
vim.cmd("highlight! link ErrorMsg Error")
vim.cmd("highlight! link MsgSeparator StatusLine")
vim.cmd("highlight! clear MsgArea")

-- cursor
highlights["Conceal"] = { fg = grayAA }
highlights["Cursor"] = { fg = grayAA }
highlights["CursorColumn"] = { bg = teal_gray }
highlights["CursorLine"] = { bg = teal_gray }
highlights["CursorLineConceal"] = { fg = red_orange, bg = teal_gray }
highlights["CursorLineNr"] = { fg = grayAA, bg = teal_gray }
highlights["TermCursor"] = { fg = black, bg = grayAA }
vim.cmd("highlight! link CursorLineSign SignColumn")
vim.cmd("highlight! link lCursor Cursor")
vim.cmd("highlight! clear CursorIM")
vim.cmd("highlight! clear TermCursorNC")

-- searching
highlights["Search"] = { fg = purple, bg = black, reverse = true }
highlights["IncSearch"] = { fg = lavendar, bg = black, reverse = true }
vim.cmd("highlight! link Substitute Search")
vim.cmd("highlight! clear CurSearch")

-- comments
highlights["Comment"] = { fg = cobalt }

-- constants
highlights["Boolean"] = { fg = blue }
highlights["Character"] = { fg = sage }
highlights["Constant"] = { fg = sky_blue }
highlights["String"] = { fg = sage }
vim.cmd("highlight! link Float Constant")
vim.cmd("highlight! link Number Constant")

-- identifiers
highlights["Function"] = { fg = magenta }
highlights["Identifier"] = { fg = sky_blue }

-- statements
highlights["Conditional"] = { fg = blue }
highlights["Operator"] = { fg = grayAA }
highlights["Repeat"] = { fg = blue }
highlights["Statement"] = { fg = red_orange }
vim.cmd("highlight! link Exception Statement")
vim.cmd("highlight! link Keyword Statement")
vim.cmd("highlight! link Label Statement")

-- preprocessor
highlights["Define"] = { fg = denim }
highlights["Include"] = { fg = turquoise }
highlights["Macro"] = { fg = denim }
highlights["PreCondit"] = { fg = denim }
highlights["PreProc"] = { fg = red }

-- types
highlights["StorageClass"] = { fg = magenta }
highlights["Structure"] = { fg = red_orange }
highlights["Type"] = { fg = blue }
highlights["Typedef"] = { fg = red_orange }

-- special
highlights["Ignore"] = { fg = gray50 }
highlights["MatchParen"] = { fg = grayAA, underline = true }
highlights["Special"] = { fg = red }
highlights["SpecialChar"] = { fg = sage, underline = true }
highlights["Title"] = { fg = red_orange }
highlights["Todo"] = { fg = gray88, bold = true }
highlights["Underlined"] = { fg = sky_blue, underline = true }
vim.cmd("highlight! link Debug Special")
vim.cmd("highlight! link Delimitter Special")
vim.cmd("highlight! link SpecialComment Special")
vim.cmd("highlight! link Tag Special")

-- nontext
highlights["NonText"] = { fg = gray50 }
highlights["SpecialKey"] = { fg = magenta }
vim.cmd("highlight! link EndOfBuffer NonText")
vim.cmd("highlight! link Whitespace NonText")

-- spelling
highlights["SpellBad"] = { fg = salmon, underline = true }
highlights["SpellCap"] = { fg = salmon, underline = true }
highlights["SpellLocal"] = { fg = red_orange, underline = true }
highlights["SpellRare"] = { fg = emerald, underline = true }

-- diff
highlights["DiffAdd"] = { fg = black, bg = dark_green }
highlights["DiffChange"] = { fg = black, bg = deep_blue }
highlights["DiffDelete"] = { fg = black, bg = dark_red }
highlights["DiffText"] = { fg = black, bg = denim }

-- menus
highlights["Pmenu"] = { fg = grayAA, bg = gray26 }
highlights["PmenuSbar"] = { bg = gray40 }
highlights["PmenuSel"] = { fg = grayAA, bg = midnight }
highlights["PmenuThumb"] = { bg = gray60 }
highlights["WildMenu"] = { fg = black, bg = deep_blue }

-- directories
highlights["Directory"] = { fg = blue }

-- diagnostics
highlights["DiagnosticError"] = { fg = bright_red }
highlights["DiagnosticWarn"] = { fg = orange }
highlights["DiagnosticInfo"] = { fg = light_blue }
highlights["DiagnosticHint"] = { fg = grayAA }
highlights["DiagnosticUnderlineError"] = { underline = true }
highlights["DiagnosticUnderlineWarn"] = { underline = true }
highlights["DiagnosticUnderlineInfo"] = { underline = true }
highlights["DiagnosticUnderlineHint"] = { underline = true }
vim.cmd("highlight! link DiagnosticFloatingError DiagnosticError")
vim.cmd("highlight! link DiagnosticFloatingHint DiagnosticHint")
vim.cmd("highlight! link DiagnosticFloatingInfo DiagnosticInfo")
vim.cmd("highlight! link DiagnosticFloatingWarn DiagnosticWarn")
vim.cmd("highlight! link DiagnosticSignError DiagnosticSign")
vim.cmd("highlight! link DiagnosticSignHint DiagnosticSign")
vim.cmd("highlight! link DiagnosticSignInfo DiagnosticSign")
vim.cmd("highlight! link DiagnosticSignWarn DiagnosticSign")
vim.cmd("highlight! link DiagnosticVirtualTextError DiagnosticError")
vim.cmd("highlight! link DiagnosticVirtualTextHint DiagnosticHint")
vim.cmd("highlight! link DiagnosticVirtualTextInfo DiagnosticInfo")
vim.cmd("highlight! link DiagnosticVirtualTextWarn DiagnosticWarn")

-- redrawdebug
highlights["RedrawDebugNormal"] = { fg = black, bg = gray88 }
highlights["RedrawDebugClear"] = { fg = black, bg = yellow }
vim.cmd("highlight! link RedrawDebugComposed DiffAdd")
vim.cmd("highlight! link RedrawDebugRecompose DiffDelete")

-- nvim
vim.cmd("highlight! link NvimInternalError Error")

-- vimscript
vim.cmd("highlight! link vimFunction Function")

-- sh
vim.cmd("highlight! link shDoubleQuote String")
highlights["shShellVariables"] = { fg = red }
highlights["shDeref"] = { fg = red }

-- GitGutter/gitsigns
highlights["GitGutterAdd"] = { fg = sage }
highlights["GitGutterChange"] = { fg = sky_blue }
highlights["GitGutterDelete"] = { fg = red }
highlights["GitGutterChangeDelete"] = { fg = red }

-- ale
highlights["ALEInfoSign"] = { fg = deep_blue, reverse = true }
highlights["ALEStyleWarningSign"] = { fg = gold, reverse = true }
highlights["ALEWarningSign"] = { fg = gold, reverse = true }

-- nvim-tree
highlights["NvimTreeWindowPicker"] = { fg = magenta, bg = gray15 }
highlights["NvimTreeRootFolder"] = { fg = denim }

-- nvim-treesitter
vim.cmd("highlight! link bashTSVariable shShellVariables")
highlights["bashTSFuncBuiltin"] = { fg = red_orange }
highlights["vimTSNamespace"] = { fg = blue }
highlights["vimTSStringSpecial"] = { fg = denim }


-- apply highlight groups
-- ----------------------

for group, highlight in pairs(highlights) do
 -- set default values if keys are missing
 -- highlight.gui = highlight.gui or "NONE"
 -- highlight.fg = highlight.fg or "NONE"
 -- highlight.bg = highlight.bg or "NONE"

 -- apply the highlight group only if the group name is not empty
 -- if group:match("^%w*$") then
 vim.api.nvim_set_hl(0, group, highlight)
 -- end
end

