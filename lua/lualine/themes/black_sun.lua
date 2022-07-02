local colors = {
  black_gray   = '#151515',
  dark_gray    = '#262626',
  blue_gray    = '#4f5b66',
  gray         = '#666666',
  white_gray   = '#bbbbbb',
  white        = '#d8dee9',
  red          = '#800000',
  green        = '#144714',
  blue         = '#08467c',
  orange       = '#a03800',
}
return {
  normal = {
    a = {bg = colors.blue,       fg = colors.white,       gui = 'bold'},
    b = {bg = colors.dark_gray,  fg = colors.white_gray},
    c = {bg = colors.black_gray, fg = colors.blue_gray}
  },
  insert = {
    a = {bg = colors.green,      fg = colors.white_gray,  gui = 'bold'},
    b = {bg = colors.dark_gray,  fg = colors.white_gray},
    c = {bg = colors.black_gray, fg = colors.blue_gray}
  },
  visual = {
    a = {bg = colors.red,        fg = colors.white_gray,  gui = 'bold'},
    b = {bg = colors.dark_gray,  fg = colors.white_gray},
    c = {bg = colors.black_gray, fg = colors.blue_gray}
  },
  replace = {
    a = {bg = colors.orange,     fg = colors.white_gray,  gui = 'bold'},
    b = {bg = colors.dark_gray,  fg = colors.white_gray},
    c = {bg = colors.black_gray, fg = colors.blue_gray}
  },
  command = {
    a = {bg = colors.blue,       fg = colors.white,       gui = 'bold'},
    b = {bg = colors.dark_gray,  fg = colors.white_gray},
    c = {bg = colors.black_gray, fg = colors.blue_gray}
  },
  inactive = {
    a = {bg = colors.dark_gray,  fg = colors.gray,        gui = 'bold'},
    b = {bg = colors.black_gray, fg = colors.blue_gray},
    c = {bg = colors.black_gray, fg = colors.blue_gray}
  }
}
