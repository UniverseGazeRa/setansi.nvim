local M = {}
local SETVTRGB_PATH = os.getenv("HOME") .. "/.cache/setvtcolors/curr-theme"
local info = vim.log.levels.INFO

function M.message()
	-- import cached setvtcolors
	if vim.fn.filereadable(SETVTRGB_PATH) == 1 then
		vim.notify("Sourcing colors...", info)
	else
		vim.notify("Use setvtrgb for a colorful experience.", info)
		vim.notify("Falling back to your terminal colors...", info)
	end
end

return M
