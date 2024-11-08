"
" plugin/black_sun.vim
"

if has("nvim")
  lua require("black_sun.black_sun")
else
  colorscheme black_sun
endif
