#!/usr/bin/env lua

local M = {}
local message = require('setansi.message')
local highlights = require('setansi.highlights')

function M.setup()
  message.message()
  vim.opt.termguicolors = false
  vim.g.colors_name = "setansi"
  highlights.highlight_all()
end

return M
