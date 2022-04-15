set background=dark
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='black_sun'
set t_Co=256

" colors
let black      = "#0C0C0C"
let white      = "#CCCCCC"
let grey       = "#4E4B59"
let light_grey = "#888888"
let dark_grey  = "#404040"
let black_grey = "#121212"
let white_grey = "#AAAAAA"
let blue_grey  = "#253340"
let green_grey = "#151A1E"
let salmon     = "#d16969"
let dark_red   = "#DC222C"
let blue       = "#36A3D9"
let dark_blue  = "#0040BB"
let cyan       = "#78cffa"
let magenta    = "#B233B2"
let purple     = "#8733DB"
let green      = "#009933"
let dark_green = "#005f00"
let sage       = "#567E44"
let orange     = "#EF6722"
let aquamarine = "#95E6CB"
let gold       = "#996600"
let yellow     = "#9C9C00"


" Vim Highlighting:
" -------------------------------------------------------------------------
let ColorAssignment = {}

let ColorAssignment["Comment"]      = {"guifg": dark_blue,    "guibg": "NONE",      "gui": "NONE"}

" Constants
let ColorAssignment["Constant"]     = {"guifg": magenta,      "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["String"]       = {"guifg": sage,         "guibg": "NONE",      "gui": "NONE"}
" Character
" Number
" Boolean
" Float

let ColorAssignment["Identifier"]   = {"guifg": blue,         "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["Function"]     = {"guifg": magenta,      "guibg": "NONE",      "gui": "NONE"}

let ColorAssignment["Statement"]    = {"guifg": orange,       "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["Conditional"]  = {"guifg": blue,         "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["Repeat"]       = {"guifg": blue,         "guibg": "NONE",      "gui": "NONE"}
" Label
let ColorAssignment["Operator"]     = {"guifg": white_grey,   "guibg": "NONE",      "gui": "NONE"}
" Keyword
" Exception

let ColorAssignment["PreProc"]      = {"guifg": dark_red,     "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["Include"]      = {"guifg": aquamarine,   "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["Define"]       = {"guifg": aquamarine,   "guibg": "NONE",      "gui": "NONE"}
" Macro
let ColorAssignment["PreCondit"]    = {"guifg": aquamarine,   "guibg": "NONE",      "gui": "NONE"}

let ColorAssignment["Type"]         = {"guifg": cyan,         "guibg": "NONE",      "gui": "NONE"}
" StorageClass
" Structure
" Typedef

let ColorAssignment["Special"]      = {"guifg": dark_red,     "guibg": "NONE",      "gui": "NONE"}
" SpecialChar
" Tag
" Delimiter
" SpecialComment
" Debug

let ColorAssignment["Underlined"]   = {"guifg": blue,         "guibg": "NONE",      "gui": "NONE"}

let ColorAssignment["Ignore"]       = {"guifg":light_grey,    "guibg": "NONE",      "gui": "NONE"}

let ColorAssignment["Error"]        = {"guifg": dark_red,     "guibg": black,       "gui": "reverse"}

let ColorAssignment["Todo"]         = {"guifg": gold,         "guibg": black,       "gui": "reverse"}


let ColorAssignment["qfLineNr"]     = {"guifg": orange,       "guibg": "NONE",      "gui": "NONE"}
" qfFileName
" qfLineNr
" qfError

let ColorAssignment["Conceal"]      = {"guifg": orange,       "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["CursorLineConceal"] = {"guifg": orange,  "guibg": green_grey,  "gui": "NONE"}


let ColorAssignment["Normal"]       = {"guifg": white_grey,   "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["ColorColumn"]  = {"guifg": "NONE",       "guibg": green_grey,  "gui": "NONE"}
let ColorAssignment["Conceal"]      = {"guifg": white_grey,   "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["Cursor"]       = {"guifg": white_grey,   "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["lCursor"]      = {"guifg": white_grey,   "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["CursorIM"]     = {"guifg": white_grey,   "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["CursorColumn"] = {"guifg": "NONE",       "guibg": green_grey,  "gui": "NONE"}
let ColorAssignment["CursorLine"]   = {"guifg": "NONE",       "guibg": green_grey,  "gui": "NONE"}
let ColorAssignment["CursorLineNr"] = {"guifg": white_grey,   "guibg": green_grey,  "gui": "NONE"}
let ColorAssignment["LineNr"]       = {"guifg": dark_grey,    "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["TermCursor"]   = {"guifg": grey,         "guibg": black,       "gui": "reverse"}

let ColorAssignment["Directory"]    = {"guifg": light_grey,   "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["DiffAdd"]      = {"guifg": sage,         "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["DiffChange"]   = {"guifg": blue,         "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["DiffDelete"]   = {"guifg": salmon,       "guibg": black,       "gui": "reverse"}
let ColorAssignment["DiffText"]     = {"guifg": white_grey,   "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["ErrorMsg"]     = {"guifg": dark_red,     "guibg": black,       "gui": "standout"}
let ColorAssignment["VertSplit"]    = {"guifg": green_grey,   "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["Folded"]       = {"guifg": blue_grey,    "guibg": white_grey,  "gui": "standout"}
let ColorAssignment["FoldColumn"]   = {"guifg": white_grey,   "guibg": black_grey,  "gui": "NONE"}
let ColorAssignment["SignColumn"]   = {"guifg": "NONE",       "guibg": black_grey,  "gui": "NONE"}
" Incsearch

let ColorAssignment["MatchParen"]   = {"guifg": white_grey,   "guibg": "NONE",      "gui": "underline"}
let ColorAssignment["ModeMsg"]      = {"guifg": sage,         "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["MoreMsg"]      = {"guifg": sage,         "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["NonText"]      = {"guifg": grey,         "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["Pmenu"]        = {"guifg": white_grey,   "guibg": blue_grey,   "gui": "NONE"}
let ColorAssignment["PmenuSel"]     = {"guifg": white_grey,   "guibg": blue_grey,   "gui": "reverse"}
let ColorAssignment["PmenuSbar"]    = {"guifg": white_grey,   "guibg": "NONE",      "gui": "reverse"}
let ColorAssignment["PmenuThumb"]   = {"guifg": white_grey,   "guibg": "NONE",      "gui": "reverse"}
let ColorAssignment["Question"]     = {"guifg": sage,         "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["Search"]       = {"guifg": purple,       "guibg": black,       "gui": "reverse"}
let ColorAssignment["SpecialKey"]   = {"guifg": magenta,      "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["SpecialCap"]   = {"guifg": blue,         "guibg": "NONE",      "gui": "underline"}
let ColorAssignment["SpellLocal"]   = {"guifg": orange,       "guibg": "NONE",      "gui": "underline"}
let ColorAssignment["SpellBad"]     = {"guifg": salmon,       "guibg": "NONE",      "gui": "underline"}
let ColorAssignment["SpellRare"]    = {"guifg": aquamarine,   "guibg": "NONE",      "gui": "underline"}
let ColorAssignment["StatusLine"]   = {"guifg": white_grey,   "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["StatusLineNC"] = {"guifg": grey,         "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["WildMenu"]     = {"guifg": salmon,       "guibg": black,       "gui": "reverse"}
let ColorAssignment["TabLine"]      = {"guifg": white_grey,   "guibg": black_grey,  "gui": "reverse"}
" TabLineFill
" TabLineSel
let ColorAssignment["Title"]        = {"guifg": orange,       "guibg": "NONE",      "gui": "NONE"}
let ColorAssignment["Visual"]       = {"guifg": "NONE",       "guibg": blue_grey,   "gui": "NONE"}
" VisualNos
let ColorAssignment["WarningMsg"]   = {"guifg": salmon,       "guibg": "NONE",      "gui": "NONE"}

let ColorAssignment["LongLineWarning"] = {"guifg": gold,      "guibg": black,       "gui": "reverse"}


" bash
"
let ColorAssignment["shDoubleQuote"] = {"guifg": sage,        "guibg": "NONE",      "gui": "NONE"}


" NerdTree:
"
let ColorAssignment["NERDTreeOpenable"] = {"guifg": grey,       "guibg": "NONE",    "gui": "NONE"}
let ColorAssignment["NERDTreeClosable"] = {"guifg": light_grey, "guibg": "NONE",    "gui": "NONE"}
" NERDTreeBookmarksHeader
" NERDTreeBookmarksLeader
" NERDTreeBookmarkName
" NERDTreeCWD
let ColorAssignment["NERDTreeUp"]       = {"guifg": grey,       "guibg": "NONE",    "gui": "NONE"}
let ColorAssignment["NERDTreeDir"]      = {"guifg": purple,     "guibg": "NONE",    "gui": "NONE"}
let ColorAssignment["NERDTreeFile"]     = {"guifg": "NONE",     "guibg": "NONE",    "gui": "NONE"}
let ColorAssignment["NERDTreeDirSlash"] = {"guifg": light_grey, "guibg": "NONE",    "gui": "NONE"}


" GitGutter
"
let ColorAssignment["GitGutterAdd"]          = {"guifg": sage,   "guibg": "NONE",   "gui": "NONE"}
let ColorAssignment["GitGutterChange"]       = {"guifg": blue,   "guibg": "NONE",   "gui": "NONE"}
let ColorAssignment["GitGutterDelete"]       = {"guifg": salmon, "guibg": "NONE",   "gui": "NONE"}
let ColorAssignment["GitGutterChangeDelete"] = {"guifg": salmon, "guibg": "NONE",   "gui": "NONE"}
let ColorAssignment["SignColumn"]            = {"guifg": "NONE", "guibg": "NONE",   "gui": "NONE"}


for key in keys(ColorAssignment)
    let s:colours = ColorAssignment[key]
    if has_key(s:colours, "gui")
        let gui = s:colours["gui"]
    else
        let gui="NONE"
    endif
    if has_key(s:colours, "guifg")
        let guifg = s:colours["guifg"]
    else
        let guifg="NONE"
    endif
    if has_key(s:colours, "guibg")
        let guibg = s:colours["guibg"]
    else
        let guibg="NONE"
    endif
    if key =~ '^\k*$'
        execute "hi ".key." gui=".gui." guifg=".guifg." guibg=".guibg
    endif
endfor

"let &background = s:style
