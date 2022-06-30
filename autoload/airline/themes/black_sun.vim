" Color palette
let s:black_gray = '#151515'
let s:dark_gray  = '#262626'
let s:gray       = '#4f5b66'
let s:light_gray = '#666666'
let s:white      = '#d8dee9'
let s:red        = '#800000'
let s:green      = '#144714'
let s:blue       = '#08467c'
let s:orange     = '#a03800'

let s:cterm_black_gray = '233'
let s:cterm_dark_gray  = '235'
let s:cterm_gray       = '59'
let s:cterlight_grey   = '189'
let s:cterm_red        = '88'
let s:cterm_green      = '22'
let s:cterm_blue       = '25'
let s:cterm_orange     = '215'

let s:guiWhite   = '#bbbbbbb'
let s:guiGray    = '#666666'
let s:ctermWhite = '231'
let s:ctermGray  = '243'

let g:airline#themes#black_sun#palette = {}
let s:modified = { 'airline_c': [ s:orange, '', s:cterm_orange, '', '' ] }

" Normal mode
let s:N1 = [ s:white , s:blue , s:cterlight_grey , s:cterm_blue  ]
let s:N2 = [ s:guiWhite , s:dark_gray , s:ctermWhite , s:cterm_dark_gray  ]
let s:N3 = [ s:gray , s:black_gray , s:cterm_gray , s:cterm_black_gray  ]
let g:airline#themes#black_sun#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#black_sun#palette.normal_modified = s:modified

" Insert mode
let s:I1 = [ s:guiWhite , s:green , s:ctermWhite , s:cterm_green  ]
let s:I2 = s:N2
let s:I3 = [ s:guiWhite , s:dark_gray , s:ctermWhite , s:cterm_black_gray  ]
let g:airline#themes#black_sun#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#black_sun#palette.insert_modified = s:modified

" Visual mode
let s:V1 = [ s:guiWhite , s:red , s:ctermWhite , s:cterm_red ]
let s:V2 = s:N2
let s:V3 = s:I3
let g:airline#themes#black_sun#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#black_sun#palette.visual_modified = s:modified

" Replace mode
let s:R1 = [ s:red , s:dark_gray , s:cterm_red, s:cterm_black_gray ]
let s:R2 = s:N2
let s:R3 = s:I3
let g:airline#themes#black_sun#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#black_sun#palette.replace_modified = s:modified

" Inactive mode
let s:IN1 = [ s:guiGray , s:dark_gray , s:ctermGray , s:cterm_dark_gray ]
let s:IN2 = [ s:gray , s:black_gray , s:cterm_gray , s:cterm_black_gray ]
let s:IN3 = [ s:gray , s:black_gray , s:cterm_gray , s:cterm_black_gray ]
let g:airline#themes#black_sun#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#black_sun#palette.inactive_modified = s:modified

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = [ s:guiWhite , s:dark_gray , s:ctermWhite , s:cterm_dark_gray  ]
let s:CP2 = [ s:guiWhite , s:light_gray , s:ctermWhite , s:cterm_dark_gray  ]
let s:CP3 = [ s:guiWhite , s:blue , s:ctermWhite , s:cterm_blue  ]

let g:airline#themes#black_sun#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)
