#!/usr/bin/env lua

local M = {}
local core = require('setvtrgb.core')
local highlights = require('setvtrgb.highlights')

function M.setup()
  local colors = core.get_colors()
  highlights.highlight_all(colors)
end

return M
