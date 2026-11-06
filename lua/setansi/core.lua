local M = {}

-- TODO: Should format better the logic: not using more than one color_path

function M.get_colors()
	local colors_paths = {}
	local colors = {}

	-- $HOME/.cache/setvtcolors/curr-theme.vim
	if os.getenv("HOME") then
		table.insert(colors_paths, os.getenv("HOME") .. "/.cache/setvtcolors/curr-theme")
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
		local file = assert(io.open(colors_path), "Couldn't read the file!")
		for line in file:lines() do
			colors[#colors + 1] = line
		end
	else
		vim.notify("couldn't read setvtcolors, where is it?")
	end

	return colors
end

return M
