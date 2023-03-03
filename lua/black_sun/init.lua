-- black_sun
--

local sethl = vim.api.nvim_set_hl

local black      = "#0c0c0c"
local black_gray = "#151515"
local dusk       = "#202020"
local dark_gray  = "#262626"
local charcoal   = "#404040"
local gray       = "#505050"
local steel_gray = "#606060"
local light_gray = "#888888"
local white_gray = "#aaaaaa"
local white      = "#bbbbbb"
local teal_gray  = "#151a1e"
local blue_gray  = "#4f5b66"

local red        = "#b02828"
local dark_red   = "#821717"
local salmon     = "#d16969"

local blue       = "#0078c8"
local deep_blue  = "#154c79"
local denim_blue = "#127da1"
local sky_blue   = "#36a3d9"
local dark_blue  = "#042a4a"
local cobalt     = "#0040bb"
local midnight   = "#253340"
local aquamrine  = "#7FFFD4"
local cyan       = "#00FFFF"

local purple     = "#8030e0"
local magenta    = "#b030a0"
local lavendar   = "#646695"

local green      = "#006000"
local dark_green = "#174f17"
local sage       = "#508040"
local emerald    = "#109040"
local turquoise  = "#1f9388"

local orange     = "#f06722"
local gold       = "#996600"

local yellow     = "#9c9c00"



-- treesitter base
sethl(0, "TSAnnotation", { fg = white })
sethl(0, "TSAttribute", { fg = white })
sethl(0, "TSBoolean", { link = "Boolean" })
sethl(0, "TSCharacter", { link = "Character" })
sethl(0, "TSCharacter", { link = "SpecialChar" })
sethl(0, "TSComment", { link = "Comment" })
sethl(0, "TSConditional", { link = "Conditional" })
sethl(0, "TSConstBuiltin", { link = "TSConstant" })         -- not in regular colorscheme
sethl(0, "TSConstMacro", { link = "Macro" })                -- not in regular colorscheme
sethl(0, "TSConstructor", { fg = white })                   -- not in regular colorscheme
sethl(0, "TSDanger", { fg = red, bold = true })             -- not in regular colorscheme
sethl(0, "TSDebug", { link = "Debug" })
sethl(0, "TSDefine", { link = "Define" })
sethl(0, "TSEmphasis", { fg = white, italic = true })       -- not in regular colorscheme
sethl(0, "TSEnvironment", { fg = white })                   -- not in regular colorscheme
sethl(0, "TSEnvironmentName", { fg = white })               -- not in regular colorscheme
sethl(0, "TSError", { link = "Error" })
sethl(0, "TSException", { link = "Exception" })
sethl(0, "TSField", { fg = white })                         -- not in regular colorscheme
sethl(0, "TSFloat", { link = "Float" })
sethl(0, "TSField", { fg = white })                         -- not in regular colorscheme
sethl(0, "TSFuncBuiltin", { fg = white })                   -- not in regular colorscheme
sethl(0, "TSFuncMacro", { fg = white })                     -- not in regular colorscheme
sethl(0, "TSFunction", { link = "Function" })
sethl(0, "TSFunctionCall", { fg = white })                  -- not in regular colorscheme
sethl(0, "TSInclude", { link = "Include" })
sethl(0, "TSKeyword", { link = "Keyword" })
sethl(0, "TSKeywordFunction", { fg = white })               -- not in regular colorscheme
sethl(0, "TSKeywordOperator", { fg = white })               -- not in regular colorscheme
sethl(0, "TSKeywordReturn", { fg = white })                 -- not in regular colorscheme
sethl(0, "TSLabel", { link = "Label" })
sethl(0, "TSLiteral", { fg = white })                       -- not in regular colorscheme
sethl(0, "TSMath", { fg = white })                          -- not in regular colorscheme
sethl(0, "TSMethod", { fg = white })                        -- not in regular colorscheme
sethl(0, "TSMethodCall", { fg = white })                    -- not in regular colorscheme
sethl(0, "TSNamespace", { fg = white })                     -- not in regular colorscheme
sethl(0, "TSNone", { fg = white })                          -- not in regular colorscheme
sethl(0, "TSNote", { fg = white, bold = true })             -- not in regular colorscheme
sethl(0, "TSNumber", { link = "Number" })
sethl(0, "TSOperator", { link = "Operator" })
sethl(0, "TSParameter", { fg = white })                     -- not in regular colorscheme
sethl(0, "TSParameterReference", { fg = white })            -- not in regular colorscheme
sethl(0, "TSPreProc", { link = "PreProc" })
sethl(0, "TSProperty", { fg = white })                      -- not in regular colorscheme
sethl(0, "TSPunctBracket", { fg = white })                  -- not in regular colorscheme
sethl(0, "TSPunctDelimiter", { fg = white })                -- not in regular colorscheme
sethl(0, "TSPunctBracket", { fg = white })                  -- not in regular colorscheme
sethl(0, "TSPunctSpecial", { fg = white })                  -- not in regular colorscheme
sethl(0, "TSRepeat", { link = "Repeat" })
sethl(0, "TSStorageClass", { link = "StorageClass" })
sethl(0, "TSStrike", { fg = white, strikethrough = true })  -- not in regular colorscheme
sethl(0, "TSString", { link = "String" })
sethl(0, "TSStringEscape", { fg = white })                  -- not in regular colorscheme
sethl(0, "TSStringRegex", { fg = white })                   -- not in regular colorscheme
sethl(0, "TSStringSpecial", { fg = white })                 -- not in regular colorscheme
sethl(0, "TSStrong", { fg = white })                        -- not in regular colorscheme
sethl(0, "TSSymbol", { fg = white })                        -- not in regular colorscheme
sethl(0, "TSTag", { link = "Tag" })
sethl(0, "TSTagAttribute", { fg = white })                  -- not in regular colorscheme
sethl(0, "TSText", { fg = white })                          -- not in regular colorscheme
sethl(0, "TSTextReference", { fg = white })                 -- not in regular colorscheme
sethl(0, "TSTitle", { link = "Title" })
sethl(0, "TSTodo", { link = "Todo" })
sethl(0, "TSType", { link = "Type" })
sethl(0, "TSTypeBuiltin", { fg = white })                   -- not in regular colorscheme
sethl(0, "TSTypeDefinition", { fg = white })                -- not in regular colorscheme
sethl(0, "TSTypeQualifier", { fg = white })                 -- not in regular colorscheme
sethl(0, "TSURI", { fg = white })                           -- not in regular colorscheme
sethl(0, "TSUnderline", { link = "Underlined" })
sethl(0, "TSVariable", { fg = white })                      -- not in regular colorscheme
sethl(0, "TSVariableBuiltin", { fg = white })               -- not in regular colorscheme
sethl(0, "TSWarning", { fg = gold, bold = true })           -- not in regular colorscheme

if vim.fn.has("nvim-0.8") == 1 then
  sethl(0, "@annotation", { link = "TSAnnotation" })
  sethl(0, "@attribute", { link = "TSAttribute" })
  sethl(0, "@boolean", { link = "TSBoolean" })
  sethl(0, "@character", { link = "TSCharacter" })
  sethl(0, "@comment", { link = "TSComment" })
  sethl(0, "@conditional", { link = "TSConditional" })
  sethl(0, "@constant", { link = "TSConstant" })
  sethl(0, "@constant.builtin", { link = "TSConstBuiltin" })
  sethl(0, "@constant.macro", { link = "TSConstMacro" })
  sethl(0, "@constructor", { link = "TSConstructor" })
  sethl(0, "@exception", { link = "TSException" })
  sethl(0, "@field", { link = "TSField" })
  sethl(0, "@float", { link = "TSFloat" })
  sethl(0, "@function", { link = "TSFunction" })
  sethl(0, "@function.builtin", { link = "TSFuncBuiltin" })
  sethl(0, "@function.macro", { link = "TSFuncMacro" })
  sethl(0, "@include", { link = "TSInclude" })
  sethl(0, "@keyword", { link = "TSKeyword" })
  sethl(0, "@keyword.function", { link = "TSKeywordFunction" })
  sethl(0, "@keyword.operator", { link = "TSKeywordOperator" })
  sethl(0, "@label", { link = "TSLabel" })
  sethl(0, "@method", { link = "TSMethod" })
  sethl(0, "@namespace", { link = "TSNamespace" })
  sethl(0, "@none", { link = "TSNone" })
  sethl(0, "@number", { link = "TSNumber" })
  sethl(0, "@operator", { link = "TSOperator" })
  sethl(0, "@parameter", { link = "TSParameter" })
  sethl(0, "@parameter.reference", { link = "TSParameterReference" })
  sethl(0, "@property", { link = "TSProperty" })
  sethl(0, "@punctuation.bracket", { link = "TSPunctBracket" })
  sethl(0, "@punctuation.delimiter", { link = "TSPunctDelimiter" })
  sethl(0, "@punctuation.special", { link = "TSPunctSpecial" })
  sethl(0, "@repeat", { link = "TSRepeat" })
  sethl(0, "@storageclass", { link = "TSStorageClass" })
  sethl(0, "@string", { link = "TSString" })
  sethl(0, "@string.escape", { link = "TSStringEscape" })
  sethl(0, "@string.regex", { link = "TSStringRegex" })
  sethl(0, "@symbol", { link = "TSSymbol" })
  sethl(0, "@tag", { link = "TSTag" })
  sethl(0, "@tag.delimiter", { link = "TSTagDelimiter" })
  sethl(0, "@text", { link = "TSText" })
  sethl(0, "@strike", { link = "TSStrike" })
  sethl(0, "@math", { link = "TSMath" })
  sethl(0, "@type", { link = "TSType" })
  sethl(0, "@type.builtin", { link = "TSTypeBuiltin" })
  sethl(0, "@uri", { link = "TSURI" })
  sethl(0, "@variable", { link = "TSVariable" })
  sethl(0, "@variable.builtin", { link = "TSVariableBuiltin" })
end
