#!/usr/bin/env lua

--
-- lua/lualine/themes/black_sun.lua
--

local black_gray = "#151515"
local dark_gray  = "#262626"
local blue_gray  = "#4f5b66"
local gray       = "#666666"
local white_gray = "#bbbbbb"
local white      = "#d8dee9"
local red        = "#800000"
local green      = "#144714"
local blue       = "#08467c"
local orange     = "#a03800"

return {
  normal = {
    a = { bg = blue,       fg = white,       gui = "bold" },
    b = { bg = dark_gray,  fg = white_gray},
    c = { bg = black_gray, fg = blue_gray}
  },
  insert = {
    a = { bg = green,      fg = white_gray,  gui = 'bold'},
    b = { bg = dark_gray,  fg = white_gray},
    c = { bg = black_gray, fg = blue_gray}
  },
  visual = {
    a = { bg = red,        fg = white_gray,  gui = 'bold'},
    b = { bg = dark_gray,  fg = white_gray},
    c = { bg = black_gray, fg = blue_gray}
  },
  replace = {
    a = { bg = orange,     fg = white_gray,  gui = 'bold'},
    b = { bg = dark_gray,  fg = white_gray},
    c = { bg = black_gray, fg = blue_gray}
  },
  command = {
    a = { bg = blue,       fg = white,       gui = 'bold'},
    b = { bg = dark_gray,  fg = white_gray},
    c = { bg = black_gray, fg = blue_gray}
  },
  inactive = {
    a = { bg = dark_gray,  fg = gray,        gui = 'bold'},
    b = { bg = black_gray, fg = blue_gray},
    c = { bg = black_gray, fg = blue_gray}
  }
}
