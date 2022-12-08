"
" black_sun.vim
"


" settings
"

set background=dark
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='black_sun'
set t_Co=256


" colors
"

" blacks
let s:black      = '#0c0c0c'

" grays
let s:gray10     = '#101010'
let s:gray15     = '#151515'
let s:gray20     = '#202020'
let s:gray26     = '#262626'
let s:gray30     = '#303030'
let s:gray40     = '#404040'
let s:gray50     = '#505050'
let s:gray60     = '#606060'
let s:gray88     = '#888888'
let s:grayAA     = '#aaaaaa'
let s:teal_gray  = '#151a1e'
let s:blue_gray  = '#4f5b66'

" reds
let s:red        = '#b02828'
let s:bright_red = '#dd2020'
let s:dark_red   = '#821717'
let s:salmon     = '#d16969'

" blues
let s:blue       = '#0078c8'
let s:midnight   = '#253340'
let s:dark_blue  = '#042a4a'
let s:deep_blue  = '#154c79'
let s:denim      = '#127da1'
let s:cobalt     = '#0040bb'
let s:aquamrine  = '#7fffd4'
let s:sky_blue   = '#36a3d9'
let s:light_blue = '#60a0c0'
let s:cyan       = '#00ffff'

" purples/pinks
let s:purple     = '#8030e0'
let s:magenta    = '#b030a0'
let s:lavendar   = '#646695'

" greens
let s:green      = '#006000'
let s:dark_green = '#174f17'
let s:sage       = '#508040'
let s:emerald    = '#109040'
let s:turquoise  = '#1f9388'

" oranges
let s:orange     = '#e89000'
let s:red_orange = '#f06722'
let s:gold       = '#996600'

" yellows
let s:yellow     = '#9c9c00'


" color assignments
"

let s:highlights = { }

" normal
let s:highlights['Normal'] = { 'guifg': s:grayAA, 'guibg': s:black }
highlight! link  NormalFloat Pmenu
highlight! clear NormalNC

" visual
let s:highlights['Visual'] = { 'guifg': 'NONE', 'guibg': s:midnight }
highlight! clear VisualNos

" windows
let s:highlights['VertSplit'] = { 'guifg': s:teal_gray, 'guibg': 'NONE' }
highlight! link  WinSeparator VertSplit
highlight! clear WinBar
highlight! clear WinBarNC

" lines and columns
let s:highlights['ColorColumn']  = { 'guifg': 'NONE',     'guibg': s:gray10 }
let s:highlights['FoldColumn']   = { 'guifg': s:grayAA,   'guibg': s:gray40 }
let s:highlights['Folded']       = { 'guifg': s:midnight, 'guibg': s:gray88, 'gui': 'standout' }
let s:highlights['LineNr']       = { 'guifg': s:gray40,   'guibg': 'NONE' }
let s:highlights['SignColumn']   = { 'guifg': 'NONE',     'guibg': s:black }
let s:highlights['QuickFixLine'] = { 'guifg': 'NONE',     'guibg': s:gray20 }
highlight! link LineNrAbove LineNr
highlight! link LineNrBelow LineNr

" status line
let s:highlights['ModeMsg']      = { 'guifg': s:sage,   'guibg': 'NONE' }
let s:highlights['StatusLine']   = { 'guifg': s:grayAA, 'guibg': 'NONE' }
let s:highlights['StatusLineNC'] = { 'guifg': s:gray50, 'guibg': 'NONE' }

" tabline
let s:highlights['TabLine']     = { 'guifg': s:blue_gray, 'guibg': s:gray15 }
let s:highlights['TabLineFill'] = { 'guifg': s:gray26,    'guibg': s:black }
let s:highlights['TabLineSel']  = { 'guifg': s:grayAA,    'guibg': s:dark_blue }

" prompts
let s:highlights['Error']      = { 'guifg': s:black,      'guibg': s:red }
let s:highlights['MoreMsg']    = { 'guifg': s:sage,       'guibg': 'NONE' }
let s:highlights['Question']   = { 'guifg': s:sage,       'guibg': 'NONE' }
let s:highlights['WarningMsg'] = { 'guifg': s:orange,     'guibg': 'NONE' }
highlight! link  ErrorMsg Error
highlight! link  MsgSeparator StatusLine
highlight! clear MsgArea

" cursor
let s:highlights['Conceal']           = { 'guifg': s:grayAA,     'guibg': 'NONE' }
let s:highlights['Cursor']            = { 'guifg': s:grayAA,     'guibg': 'NONE' }
let s:highlights['CursorColumn']      = { 'guifg': 'NONE',       'guibg': s:teal_gray }
let s:highlights['CursorLine']        = { 'guifg': 'NONE',       'guibg': s:teal_gray }
let s:highlights['CursorLineConceal'] = { 'guifg': s:red_orange, 'guibg': s:teal_gray }
let s:highlights['CursorLineNr']      = { 'guifg': s:grayAA,     'guibg': s:teal_gray }
let s:highlights['TermCursor']        = { 'guifg': s:black,      'guibg': s:grayAA }
highlight! link  CursorLineSign SignColumn
highlight! link  lCursor        Cursor
highlight! clear CursorIM
highlight! clear TermCursorNC

" searching
let s:highlights['Search']    = { 'guifg': s:black, 'guibg': s:purple }
let s:highlights['IncSearch'] = { 'guifg': s:black, 'guibg': s:lavendar }
highlight! link Substitute Search
highlight! clear CurSearch

" comments
let s:highlights['Comment'] = { 'guifg': s:cobalt, 'guibg': 'NONE' }

" constants
let s:highlights['Boolean']   = { 'guifg': s:blue,     'guibg': 'NONE' }
let s:highlights['Character'] = { 'guifg': s:sage,     'guibg': 'NONE' }
let s:highlights['Constant']  = { 'guifg': s:sky_blue, 'guibg': 'NONE' }
let s:highlights['String']    = { 'guifg': s:sage,     'guibg': 'NONE' }
highlight! link Float  Constant
highlight! link Number Constant

" identifiers
let s:highlights['Function']   = { 'guifg': s:magenta,  'guibg': 'NONE' }
let s:highlights['Identifier'] = { 'guifg': s:sky_blue, 'guibg': 'NONE' }

" statements
let s:highlights['Conditional'] = { 'guifg': s:blue,       'guibg': 'NONE' }
let s:highlights['Operator']    = { 'guifg': s:grayAA,     'guibg': 'NONE' }
let s:highlights['Repeat']      = { 'guifg': s:blue,       'guibg': 'NONE' }
let s:highlights['Statement']   = { 'guifg': s:red_orange, 'guibg': 'NONE' }
highlight! link Exception Statement
highlight! link Keyword   Statement
highlight! link Label     Statement

" preprocessor
let s:highlights['Define']    = { 'guifg': s:denim,     'guibg': 'NONE' }
let s:highlights['Include']   = { 'guifg': s:turquoise, 'guibg': 'NONE' }
let s:highlights['Macro']     = { 'guifg': s:denim,     'guibg': 'NONE' }
let s:highlights['PreCondit'] = { 'guifg': s:denim,     'guibg': 'NONE' }
let s:highlights['PreProc']   = { 'guifg': s:red,       'guibg': 'NONE' }

" types
let s:highlights['StorageClass'] = { 'guifg': s:magenta,     'guibg': 'NONE' }
let s:highlights['Structure']    = { 'guifg': s:red_orange,  'guibg': 'NONE' }
let s:highlights['Type']         = { 'guifg': s:blue,        'guibg': 'NONE' }
let s:highlights['Typedef']      = { 'guifg': s:red_orange,  'guibg': 'NONE' }

" special
let s:highlights['Ignore']      = { 'guifg': s:gray50,     'guibg': 'NONE' }
let s:highlights['MatchParen']  = { 'guifg': s:grayAA,     'guibg': 'NONE', 'gui': 'underline' }
let s:highlights['Special']     = { 'guifg': s:red,        'guibg': 'NONE' }
let s:highlights['SpecialChar'] = { 'guifg': s:sage,       'guibg': 'NONE', 'gui': 'underline' }
let s:highlights['Title']       = { 'guifg': s:red_orange, 'guibg': 'NONE' }
let s:highlights['Todo']        = { 'guifg': s:gray88,     'guibg': 'NONE', 'gui': 'bold' }
let s:highlights['Underlined']  = { 'guifg': s:sky_blue,   'guibg': 'NONE', 'gui': 'underline' }
highlight! link Debug          Special
highlight! link Delimitter     Special
highlight! link SpecialComment Special
highlight! link Tag            Special

" nontext
let s:highlights['NonText']    = { 'guifg': s:gray50,  'guibg': 'NONE', 'gui': 'NONE' }
let s:highlights['SpecialKey'] = { 'guifg': s:magenta, 'guibg': 'NONE', 'gui': 'NONE' }
highlight! link EndOfBuffer NonText
highlight! link Whitespace  NonText

" spelling
let s:highlights['SpellBad']   = { 'guifg': s:salmon,     'guibg': 'NONE', 'gui': 'underline' }
let s:highlights['SpellCap']   = { 'guifg': s:salmon,     'guibg': 'NONE', 'gui': 'underline' }
let s:highlights['SpellLocal'] = { 'guifg': s:red_orange, 'guibg': 'NONE', 'gui': 'underline' }
let s:highlights['SpellRare']  = { 'guifg': s:emerald,    'guibg': 'NONE', 'gui': 'underline' }

" diff
let s:highlights['DiffAdd']    = { 'guifg': s:black, 'guibg': s:dark_green }
let s:highlights['DiffChange'] = { 'guifg': s:black, 'guibg': s:deep_blue }
let s:highlights['DiffDelete'] = { 'guifg': s:black, 'guibg': s:dark_red }
let s:highlights['DiffText']   = { 'guifg': s:black, 'guibg': s:denim }

" menus
let s:highlights['Pmenu']      = {'guifg': s:grayAA, 'guibg': s:gray26 }
let s:highlights['PmenuSbar']  = {'guifg': 'NONE',   'guibg': s:gray40 }
let s:highlights['PmenuSel']   = {'guifg': s:grayAA, 'guibg': s:midnight }
let s:highlights['PmenuThumb'] = {'guifg': 'NONE',   'guibg': s:gray60 }
let s:highlights['WildMenu']   = {'guifg': s:black,  'guibg': s:deep_blue }

" directories
let s:highlights['Directory'] = { 'guifg': s:blue, 'guibg': 'NONE' }

" diagnostics
let s:highlights['DiagnosticError']          = { 'guifg': s:bright_red, 'guibg': 'NONE' }
let s:highlights['DiagnosticWarn']           = { 'guifg': s:orange,     'guibg': 'NONE' }
let s:highlights['DiagnosticInfo']           = { 'guifg': s:light_blue, 'guibg': 'NONE' }
let s:highlights['DiagnosticHint']           = { 'guifg': s:grayAA,     'guibg': 'NONE' }
let s:highlights['DiagnosticUnderlineError'] = { 'guifg': 'NONE',       'guibg': 'NONE', 'gui': 'underline' }
let s:highlights['DiagnosticUnderlineWarn']  = { 'guifg': 'NONE',       'guibg': 'NONE', 'gui': 'underline' }
let s:highlights['DiagnosticUnderlineInfo']  = { 'guifg': 'NONE',       'guibg': 'NONE', 'gui': 'underline' }
let s:highlights['DiagnosticUnderlineHint']  = { 'guifg': 'NONE',       'guibg': 'NONE', 'gui': 'underline' }
let s:highlights['DiagnosticSignError']      = { 'guifg': s:red,        'guibg': 'NONE', 'gui': 'reverse' }
let s:highlights['DiagnosticSignWarn']       = { 'guifg': s:gold,       'guibg': 'NONE', 'gui': 'reverse' }
let s:highlights['DiagnosticSignInfo']       = { 'guifg': s:deep_blue,  'guibg': 'NONE', 'gui': 'reverse' }
let s:highlights['DiagnosticSignHint']       = { 'guifg': s:gray88,     'guibg': 'NONE', 'gui': 'reverse' }
highlight! link DiagnosticFloatingError    DiagnosticError
highlight! link DiagnosticFloatingHint     DiagnosticHint
highlight! link DiagnosticFloatingInfo     DiagnosticInfo
highlight! link DiagnosticFloatingWarn     DiagnosticWarn
highlight! link DiagnosticVirtualTextError DiagnosticError
highlight! link DiagnosticVirtualTextHint  DiagnosticHint
highlight! link DiagnosticVirtualTextInfo  DiagnosticInfo
highlight! link DiagnosticVirtualTextWarn  DiagnosticWarn

" redrawdebug
let s:highlights['RedrawDebugNormal'] = { 'guifg': s:black, 'guibg': s:gray88 }
let s:highlights['RedrawDebugClear']  = { 'guifg': s:black, 'guibg': s:yellow }
highlight! link RedrawDebugComposed  DiffAdd
highlight! link RedrawDebugRecompose DiffDelete

" nvim
highlight! link NvimInternalError Error

" vimscript
highlight! link vimFunction Function

" sh
highlight! link shDoubleQuote String
let s:highlights['shShellVariables'] = { 'guifg': s:red, 'guibg': 'NONE' }
let s:highlights['shDeref']          = { 'guifg': s:red, 'guibg': 'NONE' }

" GitGutter/gitsigns
let s:highlights['GitGutterAdd']          = { 'guifg': s:sage,     'guibg': 'NONE' }
let s:highlights['GitGutterChange']       = { 'guifg': s:sky_blue, 'guibg': 'NONE' }
let s:highlights['GitGutterDelete']       = { 'guifg': s:red,      'guibg': 'NONE' }
let s:highlights['GitGutterChangeDelete'] = { 'guifg': s:red,      'guibg': 'NONE' }

" ale
highlight! link ALEInfoSign         DiagnosticSignInfo
highlight! link ALEStyleWarningSign DiagnosticSignWarn
highlight! link ALEWarningSign      DiagnosticSignWarn

" nvim-tree
let s:highlights['NvimTreeWindowPicker'] = { 'guifg': s:magenta, 'guibg': s:gray15 }
let s:highlights['NvimTreeRootFolder']   = { 'guifg': s:denim,   'guibg': 'NONE' }

" nvim-treesitter
highlight! link bashTSVariable shShellVariables
let s:highlights['bashTSFuncBuiltin']  = { 'guifg': s:red_orange, 'guibg': 'NONE' }
let s:highlights['vimTSNamespace']     = { 'guifg': s:blue,       'guibg': 'NONE' }
let s:highlights['vimTSStringSpecial'] = { 'guifg': s:denim,      'guibg': 'NONE' }

" coc.nvim
highlight! link CocHintSign DiagnosticHint


" highlighting
"

for [s:group, s:highlight] in items(s:highlights)
    if has_key(s:highlight, 'gui')
        let s:gui = s:highlight['gui']
    else
        let s:gui='NONE'
    endif

    if has_key(s:highlight, 'guifg')
        let s:guifg = s:highlight['guifg']
    else
        let s:guifg='NONE'
    endif

    if has_key(s:highlight, 'guibg')
        let s:guibg = s:highlight['guibg']
    else
        let s:guibg='NONE'
    endif

    if s:group =~? '^\k*$'
        execute 'hi '.s:group.' gui='.s:gui.' guifg='.s:guifg.' guibg='.s:guibg
    endif
endfor

