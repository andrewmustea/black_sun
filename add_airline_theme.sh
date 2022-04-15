#!/bin/bash

dir="$PWD/.."

if [ ! -d "../vim-airline-themes/autoload/airline/themes/" ]; then
    printf "Could not find vim-airline-themes plugin in %s" "$dir"
    exit 1
fi

ln -s "$PWD/autoload/airline/themes/black_sun.vim" "$PWD/../vim-airline-themes/autoload/airline/themes/black_sun.vim"
