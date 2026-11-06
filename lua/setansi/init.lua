#!/usr/bin/env lua

local M = {}
local message = require("setansi.message")
local highlights = require("setansi.highlights")
local core_colors = require("setansi.core")

function M.setup()
	message.message()
	vim.opt.termguicolors = true 
	vim.g.colors_name = "setansi"
	highlights.highlight_all()
end

return M
