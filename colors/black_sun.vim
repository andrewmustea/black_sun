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
let s:white      = '#bbbbbb'
let s:grey       = '#505050'
let s:light_grey = '#888888'
let s:charcoal   = '#404040'
let s:white_grey = '#aaaaaa'
let s:teal_grey  = '#151a1e'

let s:red        = '#b02828'
let s:dark_red   = '#821717'
let s:salmon     = '#d16969'

let s:blue       = '#0078c8'
let s:deep_blue  = '#154c79'
let s:denim_blue = '#127da1'
let s:sky_blue   = '#36a3d9'
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
let s:ColorAssignment['Boolean']       = {'guifg': s:blue,        'guibg': 'NONE',       'gui': 'NONE'}
" Float

let s:ColorAssignment['Identifier']   = {'guifg': s:sky_blue,     'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Function']     = {'guifg': s:magenta,      'guibg': 'NONE',       'gui': 'NONE'}

let s:ColorAssignment['Statement']    = {'guifg': s:orange,       'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Conditional']  = {'guifg': s:blue,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Repeat']       = {'guifg': s:blue,         'guibg': 'NONE',       'gui': 'NONE'}
" Label
let s:ColorAssignment['Operator']     = {'guifg': s:white_grey,   'guibg': 'NONE',       'gui': 'NONE'}
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

let s:ColorAssignment['Ignore']       = {'guifg': s:light_grey,   'guibg': 'NONE',       'gui': 'NONE'}

let s:ColorAssignment['Error']        = {'guifg': s:red,          'guibg': s:black,      'gui': 'reverse'}

let s:ColorAssignment['Todo']         = {'guifg': s:gold,         'guibg': s:black,      'gui': 'reverse'}


let s:ColorAssignment['qfLineNr']     = {'guifg': s:orange,       'guibg': 'NONE',       'gui': 'NONE'}
" qfFileName
" qfLineNr
" qfError

let s:ColorAssignment['Conceal']      = {'guifg': s:orange,       'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['CursorLineConceal'] = {'guifg': s:orange,  'guibg': s:teal_grey,  'gui': 'NONE'}

let s:ColorAssignment['Normal']       = {'guifg': s:white_grey,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['ColorColumn']  = {'guifg': 'NONE',         'guibg': s:teal_grey,  'gui': 'NONE'}
let s:ColorAssignment['Conceal']      = {'guifg': s:white_grey,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Cursor']       = {'guifg': s:white_grey,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['lCursor']      = {'guifg': s:white_grey,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['CursorIM']     = {'guifg': s:white_grey,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['CursorColumn'] = {'guifg': 'NONE',         'guibg': s:teal_grey,  'gui': 'NONE'}
let s:ColorAssignment['CursorLine']   = {'guifg': 'NONE',         'guibg': s:teal_grey,  'gui': 'NONE'}
let s:ColorAssignment['CursorLineNr'] = {'guifg': s:white_grey,   'guibg': s:teal_grey,  'gui': 'NONE'}
let s:ColorAssignment['LineNr']       = {'guifg': s:charcoal,     'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['TermCursor']   = {'guifg': s:grey,         'guibg': s:black,      'gui': 'reverse'}

let s:ColorAssignment['Directory']    = {'guifg': s:light_grey,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['DiffAdd']      = {'guifg': s:black,        'guibg': s:dark_green, 'gui': 'NONE'}
let s:ColorAssignment['DiffChange']   = {'guifg': s:black,        'guibg': s:deep_blue,  'gui': 'NONE'}
let s:ColorAssignment['DiffDelete']   = {'guifg': s:black,        'guibg': s:dark_red,   'gui': 'NONE'}
let s:ColorAssignment['DiffText']     = {'guifg': s:black,        'guibg': s:denim_blue, 'gui': 'NONE'}
let s:ColorAssignment['ErrorMsg']     = {'guifg': s:red,          'guibg': s:black,      'gui': 'standout'}
let s:ColorAssignment['VertSplit']    = {'guifg': s:teal_grey,    'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Folded']       = {'guifg': s:midnight,     'guibg': s:white_grey, 'gui': 'standout'}
let s:ColorAssignment['FoldColumn']   = {'guifg': s:white_grey,   'guibg': s:black,      'gui': 'NONE'}
let s:ColorAssignment['SignColumn']   = {'guifg': 'NONE',         'guibg': s:black,      'gui': 'NONE'}
" Incsearch

let s:ColorAssignment['MatchParen']   = {'guifg': s:white_grey,   'guibg': 'NONE',       'gui': 'underline'}
let s:ColorAssignment['ModeMsg']      = {'guifg': s:sage,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['MoreMsg']      = {'guifg': s:sage,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['NonText']      = {'guifg': s:grey,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Pmenu']        = {'guifg': s:white_grey,   'guibg': s:midnight,   'gui': 'NONE'}
let s:ColorAssignment['PmenuSel']     = {'guifg': s:white_grey,   'guibg': s:midnight,   'gui': 'reverse'}
let s:ColorAssignment['PmenuSbar']    = {'guifg': s:white_grey,   'guibg': 'NONE',       'gui': 'reverse'}
let s:ColorAssignment['PmenuThumb']   = {'guifg': s:white_grey,   'guibg': 'NONE',       'gui': 'reverse'}
let s:ColorAssignment['Question']     = {'guifg': s:sage,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Search']       = {'guifg': s:purple,       'guibg': s:black,      'gui': 'reverse'}
let s:ColorAssignment['SpecialKey']   = {'guifg': s:magenta,      'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['SpecialCap']   = {'guifg': s:sky_blue,     'guibg': 'NONE',       'gui': 'underline'}
let s:ColorAssignment['SpellLocal']   = {'guifg': s:orange,       'guibg': 'NONE',       'gui': 'underline'}
let s:ColorAssignment['SpellBad']     = {'guifg': s:salmon,       'guibg': 'NONE',       'gui': 'underline'}
let s:ColorAssignment['SpellRare']    = {'guifg': s:emerald,      'guibg': 'NONE',       'gui': 'underline'}
let s:ColorAssignment['StatusLine']   = {'guifg': s:white_grey,   'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['StatusLineNC'] = {'guifg': s:grey,         'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['WildMenu']     = {'guifg': s:salmon,       'guibg': s:black,      'gui': 'reverse'}
let s:ColorAssignment['TabLine']      = {'guifg': s:white_grey,   'guibg': s:black,      'gui': 'reverse'}
" TabLineFill
" TabLineSel
let s:ColorAssignment['Title']        = {'guifg': s:orange,       'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['Visual']       = {'guifg': 'NONE',         'guibg': s:midnight,   'gui': 'NONE'}
" VisualNos
let s:ColorAssignment['WarningMsg']   = {'guifg': s:salmon,       'guibg': 'NONE',       'gui': 'NONE'}

let s:ColorAssignment['LongLineWarning'] = {'guifg': s:gold,      'guibg': s:black,      'gui': 'reverse'}


" sh.vim
"
let s:ColorAssignment['shDoubleQuote']    = {'guifg': s:sage,     'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['shShellVariables'] = {'guifg': s:red,      'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['shDeref']          = {'guifg': s:red,      'guibg': 'NONE',       'gui': 'NONE'}


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
let s:ColorAssignment['GitGutterAdd']          = {'guifg': s:sage,     'guibg': 'NONE',  'gui': 'NONE'}
let s:ColorAssignment['GitGutterChange']       = {'guifg': s:sky_blue, 'guibg': 'NONE',  'gui': 'NONE'}
let s:ColorAssignment['GitGutterDelete']       = {'guifg': s:salmon,   'guibg': 'NONE',  'gui': 'NONE'}
let s:ColorAssignment['GitGutterChangeDelete'] = {'guifg': s:salmon,   'guibg': 'NONE',  'gui': 'NONE'}

" vim-cpp-modern
"
let s:ColorAssignment['cppSTLnamespace'] = {'guifg': s:sky_blue,  'guibg': 'NONE',       'gui': 'NONE'}
let s:ColorAssignment['cppSTLvariable'] =  {'guifg': s:red,       'guibg': 'NONE',       'gui': 'NONE'}


" highlighting
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

