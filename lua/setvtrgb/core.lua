local M = {}
local SETVTRGB_PATH = os.getenv("HOME") .. "/.cache/setvtcolors/curr-theme.vim"


function M.get_colors()
  -- import cached setvtcolors
  if vim.fn.filereadable(SETVTRGB_PATH) == 1 then
    vim.cmd("source " .. SETVTRGB_PATH)
  else
    vim.notify("couldn't read setvtrgb colors, file does not exist")
  end
print(vim.g.color14)
  return {
    transparent = "NONE",
    background = vim.g.color0,
    foreground = vim.g.color7,
    cursor = vim.g.color9,
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
