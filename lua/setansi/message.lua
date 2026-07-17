local M = {}
local SETVTRGB_PATH = os.getenv("HOME") .. "/.cache/setvtcolors/curr-theme"

function M.message()
  -- import cached setvtcolors
  if vim.fn.filereadable(SETVTRGB_PATH) == 1 then
    vim.notify("Sourcing colors...")
  else
    vim.notify("Use setvtrgb for a colorful experience.")
    vim.notify("Falling back to your terminal colors...")
  end
end

return M
