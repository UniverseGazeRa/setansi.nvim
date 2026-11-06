local M = {}
local config = require("setansi.config")
local core_colors = require("setansi.core").get_colors()


function M.highlight_all()
	local base_highlights = config.highlights_base(core_colors)
	for group, properties in pairs(base_highlights) do
		vim.api.nvim_set_hl(0, group, properties)
	end
end

return M
