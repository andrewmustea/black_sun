-- terminal.lua
--

local g = vim.g

local c = require("black_sun.colors")

local M = { }

function M.setup()
  if not cfg.term_colors then return end

  g.terminal_color_0  = c.black
  g.terminal_color_1  = c.red
  g.terminal_color_2  = c.green
  g.terminal_color_3  = c.gold
  g.terminal_color_4  = c.deep_blue
  g.terminal_color_5  = c.purple
  g.terminal_color_6  = c.sky_blue
  g.terminal_color_7  = c.gray88
  g.terminal_color_8  = c.gray60
  g.terminal_color_9  = c.bright_red
  g.terminal_color_10 = c.sage
  g.terminal_color_11 = c.yellow
  g.terminal_color_12 = c.blue
  g.terminal_color_13 = c.magenta
  g.terminal_color_14 = c.sky_blue
  g.terminal_color_15 = c.grayAA
end

return M
