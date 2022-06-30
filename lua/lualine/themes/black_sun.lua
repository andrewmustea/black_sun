local colors = {
  black_gray   = '#151515',
  dark_gray    = '#262626',
  gray_blue    = '#4f5b66',
  gray         = '#666666',
  white        = '#d8dee9',
  white_gray   = '#bbbbbb',
  red          = '#800000',
  green        = '#144714',
  blue         = '#08467c',
  orange       = '#a03800',
}
return {
  normal = {
    a = {bg = colors.blue,       fg = colors.white,       gui = 'bold'},
    b = {bg = colors.dark_gray,  fg = colors.white_gray},
    c = {bg = colors.black_gray, fg = colors.gray_blue}
  },
  insert = {
    a = {bg = colors.green,      fg = colors.white_gray,  gui = 'bold'},
    b = {bg = colors.dark_gray,  fg = colors.white_gray},
    c = {bg = colors.black_gray, fg = colors.gray_blue}
  },
  visual = {
    a = {bg = colors.red,        fg = colors.white_gray,  gui = 'bold'},
    b = {bg = colors.dark_gray,  fg = colors.white_gray},
    c = {bg = colors.black_gray, fg = colors.gray_blue}
  },
  replace = {
    a = {bg = colors.orange,     fg = colors.white_gray,  gui = 'bold'},
    b = {bg = colors.dark_gray,  fg = colors.white_gray},
    c = {bg = colors.black_gray, fg = colors.gray_blue}
  },
  command = {
    a = {bg = colors.blue,       fg = colors.white,       gui = 'bold'},
    b = {bg = colors.dark_gray,  fg = colors.white_gray},
    c = {bg = colors.black_gray, fg = colors.gray_blue}
  },
  inactive = {
    a = {bg = colors.dark_gray,  fg = colors.gray,        gui = 'bold'},
    b = {bg = colors.black_gray, fg = colors.gray_blue},
    c = {bg = colors.black_gray, fg = colors.gray_blue}
  }
}
