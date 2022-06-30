# black_sun

A dark vim color scheme, airline theme, and lualine theme.

Heavily inspired by jellybeans and ayu_dark.

To get either the vim colorscheme, airline theme, or lualine theme, use your favorite plugin manager to first install this repo. Then, add the corresponding lines to your configs below.

## vim colorscheme

In your vimrc/init.vim

    set termguicolors
    syntax on
    colorscheme black_sun

## airline theme

In your vimrc/init.vim

    let g:airline_theme = 'black_sun'

## lualine theme

In your init.lua config:

    require('lualine').setup { options = { theme = 'black_sun' } }

TODO: add pictures
