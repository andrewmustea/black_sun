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
let s:white      = '#cccccc'
let s:grey       = '#4e4b59'
let s:light_grey = '#888888'
let s:dark_grey  = '#404040'
let s:black_grey = '#121212'
let s:white_grey = '#aaaaaa'
let s:blue_grey  = '#253340'
let s:green_grey = '#151a1e'
let s:salmon     = '#d16969'
let s:red        = '#cf1720'
let s:dark_red   = '#821717'
let s:deep_blue  = '#154c79'
let s:blue       = '#127da1'
let s:cyan       = '#36a3d9'
let s:dark_blue  = '#0040bb'
let s:magenta    = '#b233b2'
let s:purple     = '#8733db'
let s:green      = '#174f17'
let s:dark_green = '#005f00'
let s:sage       = '#567e44'
let s:orange     = '#ef6722'
let s:aquamarine = '#22916c'
let s:gold       = '#996600'
let s:yellow     = '#9c9c00'


" vim
"
let s:ColorAssignment = {}

let s:ColorAssignment['Comment']      = {'guifg': s:dark_blue,    'guibg': 'NONE',       'gui': 'NONE'}

let s:ColorAssignment['Constant']     = {'guifg': s:aquamarine,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['String']       = {'guifg': s:sage,         'guibg': 'NONE',       'gui': 'NONE'}
" Character
" Number
" Boolean
" Float

let s:ColorAssignment['Identifier']   = {'guifg': s:cyan,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Function']     = {'guifg': s:magenta,      'guibg': 'NONE',       'gui': 'NONE'}

let s:ColorAssignment['Statement']    = {'guifg': s:orange,       'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Conditional']  = {'guifg': s:magenta,      'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Repeat']       = {'guifg': s:blue,         'guibg': 'NONE',       'gui': 'NONE'}
" Label
let s:ColorAssignment['Operator']     = {'guifg': s:white_grey,   'guibg': 'NONE',       'gui': 'NONE'}
" Keyword
" Exception

let s:ColorAssignment['PreProc']      = {'guifg': s:red,          'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Include']      = {'guifg': s:aquamarine,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Define']       = {'guifg': s:aquamarine,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Macro']        = {'guifg': s:blue,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['PreCondit']    = {'guifg': s:blue,         'guibg': 'NONE',       'gui': 'NONE'}

let s:ColorAssignment['Type']         = {'guifg': s:cyan,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['StorageClass'] = {'guifg': s:magenta,      'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Structure']    = {'guifg': s:blue,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Typedef']      = {'guifg': s:blue,         'guibg': 'NONE',       'gui': 'NONE'}

let s:ColorAssignment['Special']      = {'guifg': s:red,          'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['SpecialChar']  = {'guifg': s:sage,         'guibg': 'NONE',       'gui': 'underline'}
" Tag
" Delimiter
" SpecialComment
" Debug

let s:ColorAssignment['Underlined']   = {'guifg': s:cyan,         'guibg': 'NONE',       'gui': 'underline'}

let s:ColorAssignment['Ignore']       = {'guifg': s:light_grey,   'guibg': 'NONE',       'gui': 'NONE'}

let s:ColorAssignment['Error']        = {'guifg': s:red,          'guibg': s:black,      'gui': 'reverse'}

let s:ColorAssignment['Todo']         = {'guifg': s:gold,         'guibg': s:black,      'gui': 'reverse'}


let s:ColorAssignment['qfLineNr']     = {'guifg': s:orange,       'guibg': 'NONE',       'gui': 'NONE'}
" qfFileName
" qfLineNr
" qfError

let s:ColorAssignment['Conceal']      = {'guifg': s:orange,       'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['CursorLineConceal'] = {'guifg': s:orange,  'guibg': s:green_grey, 'gui': 'NONE'}


let s:ColorAssignment['Normal']       = {'guifg': s:white_grey,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['ColorColumn']  = {'guifg': 'NONE',         'guibg': s:green_grey, 'gui': 'NONE'}
let s:ColorAssignment['Conceal']      = {'guifg': s:white_grey,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Cursor']       = {'guifg': s:white_grey,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['lCursor']      = {'guifg': s:white_grey,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['CursorIM']     = {'guifg': s:white_grey,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['CursorColumn'] = {'guifg': 'NONE',         'guibg': s:green_grey, 'gui': 'NONE'}
let s:ColorAssignment['CursorLine']   = {'guifg': 'NONE',         'guibg': s:green_grey, 'gui': 'NONE'}
let s:ColorAssignment['CursorLineNr'] = {'guifg': s:white_grey,   'guibg': s:green_grey, 'gui': 'NONE'}
let s:ColorAssignment['LineNr']       = {'guifg': s:dark_grey,    'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['TermCursor']   = {'guifg': s:grey,         'guibg': s:black,      'gui': 'reverse'}

let s:ColorAssignment['Directory']    = {'guifg': s:light_grey,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['DiffAdd']      = {'guifg': s:black,        'guibg': s:green,      'gui': 'NONE'}
let s:ColorAssignment['DiffChange']   = {'guifg': s:black,        'guibg': s:deep_blue,  'gui': 'NONE'}
let s:ColorAssignment['DiffDelete']   = {'guifg': s:black,        'guibg': s:dark_red,   'gui': 'NONE'}
let s:ColorAssignment['DiffText']     = {'guifg': s:black,        'guibg': s:blue,       'gui': 'NONE'}
let s:ColorAssignment['ErrorMsg']     = {'guifg': s:red,          'guibg': s:black,      'gui': 'standout'}
let s:ColorAssignment['VertSplit']    = {'guifg': s:green_grey,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Folded']       = {'guifg': s:blue_grey,    'guibg': s:white_grey, 'gui': 'standout'}
let s:ColorAssignment['FoldColumn']   = {'guifg': s:white_grey,   'guibg': s:black_grey, 'gui': 'NONE'}
let s:ColorAssignment['SignColumn']   = {'guifg': 'NONE',         'guibg': s:black_grey, 'gui': 'NONE'}
" Incsearch

let s:ColorAssignment['MatchParen']   = {'guifg': s:white_grey,   'guibg': 'NONE',       'gui': 'underline'}
let s:ColorAssignment['ModeMsg']      = {'guifg': s:sage,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['MoreMsg']      = {'guifg': s:sage,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['NonText']      = {'guifg': s:grey,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Pmenu']        = {'guifg': s:white_grey,   'guibg': s:blue_grey,  'gui': 'NONE'}
let s:ColorAssignment['PmenuSel']     = {'guifg': s:white_grey,   'guibg': s:blue_grey,  'gui': 'reverse'}
let s:ColorAssignment['PmenuSbar']    = {'guifg': s:white_grey,   'guibg': 'NONE',       'gui': 'reverse'}
let s:ColorAssignment['PmenuThumb']   = {'guifg': s:white_grey,   'guibg': 'NONE',       'gui': 'reverse'}
let s:ColorAssignment['Question']     = {'guifg': s:sage,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Search']       = {'guifg': s:purple,       'guibg': s:black,      'gui': 'reverse'}
let s:ColorAssignment['SpecialKey']   = {'guifg': s:magenta,      'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['SpecialCap']   = {'guifg': s:cyan,         'guibg': 'NONE',       'gui': 'underline'}
let s:ColorAssignment['SpellLocal']   = {'guifg': s:orange,       'guibg': 'NONE',       'gui': 'underline'}
let s:ColorAssignment['SpellBad']     = {'guifg': s:salmon,       'guibg': 'NONE',       'gui': 'underline'}
let s:ColorAssignment['SpellRare']    = {'guifg': s:aquamarine,   'guibg': 'NONE',       'gui': 'underline'}
let s:ColorAssignment['StatusLine']   = {'guifg': s:white_grey,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['StatusLineNC'] = {'guifg': s:grey,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['WildMenu']     = {'guifg': s:salmon,       'guibg': s:black,      'gui': 'reverse'}
let s:ColorAssignment['TabLine']      = {'guifg': s:white_grey,   'guibg': s:black_grey, 'gui': 'reverse'}
" TabLineFill
" TabLineSel
let s:ColorAssignment['Title']        = {'guifg': s:orange,       'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Visual']       = {'guifg': 'NONE',         'guibg': s:blue_grey,  'gui': 'NONE'}
" VisualNos
let s:ColorAssignment['WarningMsg']   = {'guifg': s:salmon,       'guibg': 'NONE',       'gui': 'NONE'}

let s:ColorAssignment['LongLineWarning'] = {'guifg': s:gold,      'guibg': s:black,      'gui': 'reverse'}


" sh.vim
"
let s:ColorAssignment['shDoubleQuote'] = {'guifg': s:sage,        'guibg': 'NONE',       'gui': 'NONE'}


" NerdTree
"
let s:ColorAssignment['NERDTreeOpenable'] = {'guifg': s:grey,       'guibg': 'NONE',     'gui': 'NONE'}
let s:ColorAssignment['NERDTreeClosable'] = {'guifg': s:light_grey, 'guibg': 'NONE',     'gui': 'NONE'}
" NERDTreeBookmarksHeader
" NERDTreeBookmarksLeader
" NERDTreeBookmarkName
" NERDTreeCWD
let s:ColorAssignment['NERDTreeUp']       = {'guifg': s:grey,       'guibg': 'NONE',     'gui': 'NONE'}
let s:ColorAssignment['NERDTreeDir']      = {'guifg': s:purple,     'guibg': 'NONE',     'gui': 'NONE'}
let s:ColorAssignment['NERDTreeFile']     = {'guifg': 'NONE',       'guibg': 'NONE',     'gui': 'NONE'}
let s:ColorAssignment['NERDTreeDirSlash'] = {'guifg': s:light_grey, 'guibg': 'NONE',     'gui': 'NONE'}


" GitGutter
"
let s:ColorAssignment['GitGutterAdd']          = {'guifg': s:sage,   'guibg': 'NONE',    'gui': 'NONE'}
let s:ColorAssignment['GitGutterChange']       = {'guifg': s:cyan,   'guibg': 'NONE',    'gui': 'NONE'}
let s:ColorAssignment['GitGutterDelete']       = {'guifg': s:salmon, 'guibg': 'NONE',    'gui': 'NONE'}
let s:ColorAssignment['GitGutterChangeDelete'] = {'guifg': s:salmon, 'guibg': 'NONE',    'gui': 'NONE'}
let s:ColorAssignment['SignColumn']            = {'guifg': 'NONE',   'guibg': 'NONE',    'gui': 'NONE'}


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

