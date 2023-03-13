-- init.lua
--

local api = vim.api
local g = vim.g
local o = vim.o

local fn = vim.fn
  or setmetatable({ }, {
    __index = function(t, key)
      local function _fn(...)
        return api.nvim_call_function(key, { ... })
      end
      t[key] = _fn
      return _fn
    end,
  })

local groups = require("black_sun.group").groups
local colors = require("black_sun.color").colors

local M = {
  colors = colors,
  Color = require("black_sun.color").Color,
  groups = groups,
  Group = require("black_sun.group").groups,
  styles = require("black_sun.style").Styles
}

function M.load(opts)
  -- TODO: redo this
  opts = opts or { }

  if not opts.disable_defaults then
    require("black_sun.plugins")
  end

  api.nvim_command("hi clear")
  if fn.exists("syntax_on") then
    api.nvim_command("syntax reset")
  end

  o.termguicolors = true
  g.colors_name = "black_sun"
  g.background = "dark"

  require("black_sun.highlights")

  api.nvim_command("colorscheme black_sun")
end

return M




















-- local g = vim.g
-- local o = vim.o

-- -- Change a black_sun config value (vim.g.black_sun.option)
-- -- It can't be changed directly by modifing that field due to a Neovim lua bug with global variables (black_sun_config is a global variable)
-- -- @param opt string: option name
-- -- @param value any: new value
-- function M.set_options(opt, value)
--     local cfg = g.black_sun_config
--     cfg[opt] = value
--     g.black_sun_config = cfg
-- end
--
-- -- Apply the colorscheme (same as ":colorscheme black_sun")
-- function M.colorscheme()
--     cmd("hi clear")
--     if fn.exists("syntax_on") then
--       cmd("syntax reset")
--     end
--
--     o.termguicolors = true
--     g.colors_name = "black_sun"
--
--     require("black_sun.highlights").setup()
--     require("black_sun.terminal").setup()
-- end
--
-- local default_config = {
--   term_colors = true,
--   transparent = false,
--
--   -- special formats
--   code_style = {
--     comments = "none",
--     functions = "none",
--     keywords = "none",
--     strings = "none",
--     variables = "none"
--   },
--
--   -- lualine
--   lualine = {
--     transparent = false   -- center bar (c) transparency
--   },
--
--   -- custom highlights
--   colors = { },
--   highlights = { },
--
--   -- plugins
--   diagnostics = {
--     undercurl = true,
--     background = true   -- use background color for virtual text
--   }
-- }
--
-- -- Setup black_sun options without applying colorscheme
-- -- @param opts table: options table
-- function M.setup(opts)
--   -- first time setup
--   if not g.black_sun_config or not g.black_sun_config.loaded then
--     g.black_sun_config = vim.tbl_deep_extend("keep", g.black_sun_config or { }, default_config)
--     M.set_options("loaded", true)
--   end
--
--   -- set options
--   if opts then
--     g.black_sun_config = vim.tbl_deep_extend("force", g.black_sun_config, opts)
--   end
-- end
--
-- function M.load()
--   api.nvim_command("colorscheme black_sun")
-- end
--
