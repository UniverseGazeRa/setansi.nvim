local M = {}

function M.get_colors()
	local colors_paths = {}

	-- $HOME/.cache/setvtcolors/curr-theme.vim
	if os.getenv("HOME") then
		table.insert(colors_paths, os.getenv("HOME") .. "/.cache/setvtcolors/curr-theme.vim")
	end

	-- use first available path in the possible paths list
	local colors_path = nil
	for _, path in ipairs(colors_paths) do
		if vim.fn.filereadable(path) == 1 then
			colors_path = path
			break
		end
	end

	-- import setvtcolors cache file
	if colors_path then
		vim.cmd("source " .. vim.fn.fnameescape(colors_path))
	else
		vim.notify("couldn't read setvtcolors, where it is?")
	end

	return {
		transparent = "None",
		color0 = vim.g.color0,
		color1 = vim.g.color1,
		color2 = vim.g.color2,
		color3 = vim.g.color3,
		color4 = vim.g.color4,
		color5 = vim.g.color5,
		color6 = vim.g.color6,
		color7 = vim.g.color7,
		color8 = vim.g.color8,
		color9 = vim.g.color9,
		color10 = vim.g.color10,
		color11 = vim.g.color11,
		color12 = vim.g.color12,
		color13 = vim.g.color13,
		color14 = vim.g.color14,
		color15 = vim.g.color15,
	}
end

return M
