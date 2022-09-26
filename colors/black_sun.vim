set background=dark
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='black_sun'
set t_Co=256


" colors
"
let s:black      = '#0c0c0c'
let s:black_gray = '#151515'
let s:dusk       = '#202020'
let s:dark_gray  = '#262626'
let s:charcoal   = '#404040'
let s:gray       = '#505050'
let s:steel_gray = '#606060'
let s:light_gray = '#888888'
let s:white_gray = '#aaaaaa'
let s:white      = '#bbbbbb'
let s:teal_gray  = '#151a1e'
let s:blue_gray  = '#4f5b66'

let s:red        = '#b02828'
let s:dark_red   = '#821717'
let s:salmon     = '#d16969'

let s:blue       = '#0078c8'
let s:deep_blue  = '#154c79'
let s:denim_blue = '#127da1'
let s:sky_blue   = '#36a3d9'
let s:dark_blue  = '#042a4a'
let s:cobalt     = '#0040bb'
let s:midnight   = '#253340'
let s:aquamrine  = '#7FFFD4'
let s:cyan       = '#00FFFF'

let s:purple     = '#8030e0'
let s:magenta    = '#b030a0'
let s:lavendar   = '#646695'

let s:green      = '#006000'
let s:dark_green = '#174f17'
let s:sage       = '#508040'
let s:emerald    = '#109040'
let s:turquoise  = '#1f9388'

let s:orange     = '#f06722'
let s:gold       = '#996600'

let s:yellow     = '#9c9c00'


" color assignment
"
let s:ColorAssignment = {}

let s:ColorAssignment['Comment']      = {'guifg': s:cobalt,       'guibg': 'NONE',       'gui': 'NONE'}

let s:ColorAssignment['Constant']     = {'guifg': s:sky_blue,     'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['String']       = {'guifg': s:sage,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Character']    = {'guifg': s:sage,         'guibg': 'NONE',       'gui': 'NONE'}
" Number
let s:ColorAssignment['Boolean']      = {'guifg': s:blue,         'guibg': 'NONE',       'gui': 'NONE'}
" Float

let s:ColorAssignment['Identifier']   = {'guifg': s:sky_blue,     'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Function']     = {'guifg': s:magenta,      'guibg': 'NONE',       'gui': 'NONE'}

let s:ColorAssignment['Statement']    = {'guifg': s:orange,       'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Conditional']  = {'guifg': s:blue,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Repeat']       = {'guifg': s:blue,         'guibg': 'NONE',       'gui': 'NONE'}
" Label
let s:ColorAssignment['Operator']     = {'guifg': s:white_gray,   'guibg': 'NONE',       'gui': 'NONE'}
" Keyword
" Exception

let s:ColorAssignment['PreProc']      = {'guifg': s:red,          'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Include']      = {'guifg': s:turquoise,    'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Define']       = {'guifg': s:denim_blue,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Macro']        = {'guifg': s:denim_blue,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['PreCondit']    = {'guifg': s:denim_blue,   'guibg': 'NONE',       'gui': 'NONE'}

let s:ColorAssignment['Type']         = {'guifg': s:blue,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['StorageClass'] = {'guifg': s:magenta,      'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Structure']    = {'guifg': s:orange,       'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Typedef']      = {'guifg': s:orange,       'guibg': 'NONE',       'gui': 'NONE'}

let s:ColorAssignment['Special']      = {'guifg': s:red,          'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['SpecialChar']  = {'guifg': s:sage,         'guibg': 'NONE',       'gui': 'underline'}
" Tag
" Delimiter
" SpecialComment
" Debug

let s:ColorAssignment['Underlined']   = {'guifg': s:sky_blue,     'guibg': 'NONE',       'gui': 'underline'}

let s:ColorAssignment['Ignore']       = {'guifg': s:light_gray,   'guibg': 'NONE',       'gui': 'NONE'}

let s:ColorAssignment['Error']        = {'guifg': s:red,          'guibg': s:black,      'gui': 'reverse'}

let s:ColorAssignment['Todo']         = {'guifg': s:gold,         'guibg': s:black,      'gui': 'reverse'}


let s:ColorAssignment['qfLineNr']     = {'guifg': s:orange,       'guibg': 'NONE',       'gui': 'NONE'}
" qfFileName
" qfError

let s:ColorAssignment['Conceal']      = {'guifg': s:orange,       'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['CursorLineConceal'] = {'guifg': s:orange,  'guibg': s:teal_gray,  'gui': 'NONE'}

let s:ColorAssignment['Normal']       = {'guifg': s:white_gray,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['ColorColumn']  = {'guifg': 'NONE',         'guibg': s:teal_gray,  'gui': 'NONE'}
let s:ColorAssignment['Conceal']      = {'guifg': s:white_gray,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Cursor']       = {'guifg': s:white_gray,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['lCursor']      = {'guifg': s:white_gray,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['CursorIM']     = {'guifg': s:white_gray,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['CursorColumn'] = {'guifg': 'NONE',         'guibg': s:teal_gray,  'gui': 'NONE'}
let s:ColorAssignment['CursorLine']   = {'guifg': 'NONE',         'guibg': s:teal_gray,  'gui': 'NONE'}
let s:ColorAssignment['CursorLineNr'] = {'guifg': s:white_gray,   'guibg': s:teal_gray,  'gui': 'NONE'}
let s:ColorAssignment['LineNr']       = {'guifg': s:charcoal,     'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['TermCursor']   = {'guifg': s:gray,         'guibg': s:black,      'gui': 'reverse'}

let s:ColorAssignment['Directory']    = {'guifg': s:light_gray,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['DiffAdd']      = {'guifg': s:black,        'guibg': s:dark_green, 'gui': 'NONE'}
let s:ColorAssignment['DiffChange']   = {'guifg': s:black,        'guibg': s:deep_blue,  'gui': 'NONE'}
let s:ColorAssignment['DiffDelete']   = {'guifg': s:black,        'guibg': s:dark_red,   'gui': 'NONE'}
let s:ColorAssignment['DiffText']     = {'guifg': s:black,        'guibg': s:denim_blue, 'gui': 'NONE'}
let s:ColorAssignment['ErrorMsg']     = {'guifg': s:red,          'guibg': s:black,      'gui': 'standout'}
let s:ColorAssignment['VertSplit']    = {'guifg': s:teal_gray,    'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Folded']       = {'guifg': s:midnight,     'guibg': s:white_gray, 'gui': 'standout'}
let s:ColorAssignment['FoldColumn']   = {'guifg': s:white_gray,   'guibg': s:black,      'gui': 'NONE'}
let s:ColorAssignment['SignColumn']   = {'guifg': 'NONE',         'guibg': s:black,      'gui': 'NONE'}
" Incsearch

let s:ColorAssignment['MatchParen']   = {'guifg': s:white_gray,   'guibg': 'NONE',       'gui': 'underline'}
let s:ColorAssignment['ModeMsg']      = {'guifg': s:sage,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['MoreMsg']      = {'guifg': s:sage,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['NonText']      = {'guifg': s:gray,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Pmenu']        = {'guifg': s:white_gray,   'guibg': s:midnight,   'gui': 'NONE'}
let s:ColorAssignment['PmenuSel']     = {'guifg': s:white_gray,   'guibg': s:midnight,   'gui': 'reverse'}
let s:ColorAssignment['PmenuSbar']    = {'guifg': s:white_gray,   'guibg': 'NONE',       'gui': 'reverse'}
let s:ColorAssignment['PmenuThumb']   = {'guifg': s:white_gray,   'guibg': 'NONE',       'gui': 'reverse'}
let s:ColorAssignment['Question']     = {'guifg': s:sage,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Search']       = {'guifg': s:purple,       'guibg': s:black,      'gui': 'reverse'}
let s:ColorAssignment['SpecialKey']   = {'guifg': s:magenta,      'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['SpecialCap']   = {'guifg': s:sky_blue,     'guibg': 'NONE',       'gui': 'underline'}
let s:ColorAssignment['SpellLocal']   = {'guifg': s:orange,       'guibg': 'NONE',       'gui': 'underline'}
let s:ColorAssignment['SpellBad']     = {'guifg': s:salmon,       'guibg': 'NONE',       'gui': 'underline'}
let s:ColorAssignment['SpellRare']    = {'guifg': s:emerald,      'guibg': 'NONE',       'gui': 'underline'}
let s:ColorAssignment['StatusLine']   = {'guifg': s:white_gray,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['StatusLineNC'] = {'guifg': s:gray,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['WildMenu']     = {'guifg': s:deep_blue,       'guibg': s:black,      'gui': 'reverse'}
let s:ColorAssignment['TabLine']      = {'guifg': s:white_gray,   'guibg': s:black,      'gui': 'NONE'}
let s:ColorAssignment['TabLineFill']  = {'guifg': s:dark_gray,    'guibg': s:black,      'gui': 'NONE'}
let s:ColorAssignment['TabLineSel']   = {'guifg': s:blue,         'guibg': s:black,      'gui': 'reverse'}
let s:ColorAssignment['Title']        = {'guifg': s:orange,       'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Visual']       = {'guifg': 'NONE',         'guibg': s:midnight,   'gui': 'NONE'}
let s:ColorAssignment['VisualNos']    = {'guifg': 'NONE',         'guibg': s:midnight,   'gui': 'NONE'}
let s:ColorAssignment['WarningMsg']   = {'guifg': s:salmon,       'guibg': 'NONE',       'gui': 'NONE'}

let s:ColorAssignment['LongLineWarning'] = {'guifg': s:gold,      'guibg': s:black,      'gui': 'reverse'}

let s:ColorAssignment['RedrawDebugNormal']    = {'guifg': s:white_gray, 'guibg': s:black, 'gui': 'reverse'}
let s:ColorAssignment['RedrawDebugClear']     = {'guifg': s:yellow,     'guibg': s:black, 'gui': 'reverse'}
let s:ColorAssignment['RedrawDebugComposed']  = {'guifg': s:dark_green, 'guibg': s:black, 'gui': 'reverse'}
let s:ColorAssignment['RedrawDebugRecompose'] = {'guifg': s:dark_red,   'guibg': s:black, 'gui': 'reverse'}


" nvim
"
highlight! link NvimInternalError Error


" vimscript
"
highlight! link vimFunction Function


" sh.vim
"
highlight! link shDoubleQuote String
let s:ColorAssignment['shShellVariables'] = {'guifg': s:red,      'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['shDeref']          = {'guifg': s:red,      'guibg': 'NONE',       'gui': 'NONE'}


" nvim-tree
"
let s:ColorAssignment['NvimTreeWindowPicker'] = {'guifg': s:magenta,    'guibg': s:black_gray, 'gui': 'NONE'}
let s:ColorAssignment['NvimTreeRootFolder']   = {'guifg': s:denim_blue, 'guibg': 'NONE',       'gui': 'NONE'}


" NerdTree
"
let s:ColorAssignment['NERDTreeOpenable'] = {'guifg': s:gray,       'guibg': 'NONE',     'gui': 'NONE'}
let s:ColorAssignment['NERDTreeClosable'] = {'guifg': s:light_gray, 'guibg': 'NONE',     'gui': 'NONE'}
" NERDTreeBookmarksHeader
" NERDTreeBookmarksLeader
" NERDTreeBookmarkName
" NERDTreeCWD
let s:ColorAssignment['NERDTreeUp']       = {'guifg': s:gray,       'guibg': 'NONE',     'gui': 'NONE'}
let s:ColorAssignment['NERDTreeDir']      = {'guifg': s:purple,     'guibg': 'NONE',     'gui': 'NONE'}
let s:ColorAssignment['NERDTreeFile']     = {'guifg': 'NONE',       'guibg': 'NONE',     'gui': 'NONE'}
let s:ColorAssignment['NERDTreeDirSlash'] = {'guifg': s:light_gray, 'guibg': 'NONE',     'gui': 'NONE'}


" GitGutter
"
let s:ColorAssignment['GitGutterAdd']          = {'guifg': s:sage,     'guibg': 'NONE',  'gui': 'NONE'}
let s:ColorAssignment['GitGutterChange']       = {'guifg': s:sky_blue, 'guibg': 'NONE',  'gui': 'NONE'}
let s:ColorAssignment['GitGutterDelete']       = {'guifg': s:red,      'guibg': 'NONE',  'gui': 'NONE'}
let s:ColorAssignment['GitGutterChangeDelete'] = {'guifg': s:red,      'guibg': 'NONE',  'gui': 'NONE'}


" bufferline.nvim
"
let s:ColorAssignment['BufferLineBufferSelected']      = {'guifg': s:white_gray, 'guibg': s:dark_blue,  'gui': 'NONE'}
let s:ColorAssignment['BufferLineNumbersSelected']     = {'guifg': s:white_gray, 'guibg': s:dark_blue,  'gui': 'NONE'}
let s:ColorAssignment['BufferLineDuplicateSelected']   = {'guifg': s:white_gray, 'guibg': s:dark_blue,  'gui': 'NONE'}
let s:ColorAssignment['BufferLineModifiedSelected']    = {'guifg': s:sage,       'guibg': s:dark_blue,  'gui': 'NONE'}
let s:ColorAssignment['BufferLineCloseButtonSelected'] = {'guifg': s:white_gray, 'guibg': s:dark_blue,  'gui': 'NONE'}
let s:ColorAssignment['BufferLineSeparatorSelected']   = {'guifg': s:black,      'guibg': s:dark_blue,  'gui': 'NONE'}

let s:ColorAssignment['BufferLineBufferVisible']       = {'guifg': s:steel_gray,  'guibg': s:dusk,      'gui': 'NONE'}
let s:ColorAssignment['BufferLineNumbersVisible']      = {'guifg': s:steel_gray,  'guibg': s:dusk,      'gui': 'NONE'}
let s:ColorAssignment['BufferLineDuplicateVisible']    = {'guifg': s:steel_gray,  'guibg': s:dusk,      'gui': 'NONE'}
let s:ColorAssignment['BufferLineModifiedVisible']     = {'guifg': s:sage,        'guibg': s:dusk,      'gui': 'NONE'}
let s:ColorAssignment['BufferLineCloseButtonVisible']  = {'guifg': s:steel_gray,  'guibg': s:dusk,      'gui': 'NONE'}
let s:ColorAssignment['BufferLineSeparatorVisible']    = {'guifg': s:black,       'guibg': s:dusk,      'gui': 'NONE'}

let s:ColorAssignment['BufferLineBuffer']              = {'guifg': s:blue_gray,  'guibg': s:black_gray, 'gui': 'NONE'}
let s:ColorAssignment['BufferLineNumbers']             = {'guifg': s:blue_gray,  'guibg': s:black_gray, 'gui': 'NONE'}
let s:ColorAssignment['BufferLineDuplicate']           = {'guifg': s:blue_gray,  'guibg': s:black_gray, 'gui': 'NONE'}
let s:ColorAssignment['BufferLineModified']            = {'guifg': s:sage,       'guibg': s:black_gray, 'gui': 'NONE'}
let s:ColorAssignment['BufferLineCloseButton']         = {'guifg': s:blue_gray,  'guibg': s:black_gray, 'gui': 'NONE'}
let s:ColorAssignment['BufferLineSeparator']           = {'guifg': s:black,      'guibg': s:black_gray, 'gui': 'NONE'}

let s:ColorAssignment['BufferLineTab']                 = {'guifg': s:blue_gray,  'guibg': s:black,      'gui': 'NONE'}
let s:ColorAssignment['BufferLineTabSelected']         = {'guifg': s:white_gray, 'guibg': s:dark_blue,  'gui': 'NONE'}
let s:ColorAssignment['BufferLineTabClose']            = {'guifg': s:white_gray, 'guibg': s:black,      'gui': 'NONE'}
let s:ColorAssignment['BufferLineBackground']          = {'guifg': s:blue_gray,  'guibg': s:black_gray, 'gui': 'NONE'}


" vim-cpp-modern
"
let s:ColorAssignment['cppSTLnamespace'] = {'guifg': s:sky_blue,  'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['cppSTLvariable']  = {'guifg': s:red,       'guibg': 'NONE',       'gui': 'NONE'}


" nvim-treesitter
"

" sh
highlight! link bashTSVariable shShellVariables
let s:ColorAssignment['bashTSFuncBuiltin']  = {'guifg': s:orange,     'guibg': 'NONE',    'gui': 'NONE'}

" vimscript
let s:ColorAssignment['vimTSNamespace']     = {'guifg': s:blue,       'guibg': 'NONE',    'gui': 'NONE'}
let s:ColorAssignment['vimTSStringSpecial'] = {'guifg': s:denim_blue, 'guibg': 'NONE',    'gui': 'NONE'}


" assignment
"
for s:key in keys(s:ColorAssignment)
    let s:colors = s:ColorAssignment[s:key]
    if has_key(s:colors, 'gui')
        let s:gui = s:colors['gui']
    else
        let s:gui='NONE'
    endif
    if has_key(s:colors, 'guifg')
        let s:guifg = s:colors['guifg']
    else
        let s:guifg='NONE'
    endif
    if has_key(s:colors, 'guibg')
        let s:guibg = s:colors['guibg']
    else
        let s:guibg='NONE'
    endif
    if s:key =~? '^\k*$'
        execute 'hi '.s:key.' gui='.s:gui.' guifg='.s:guifg.' guibg='.s:guibg
    endif
endfor

