local M = {}
local config = require("setansi.config")

function M.highlight_all(colors)
  local base_highlights = config.highlights_base()
  for group, properties in pairs(base_highlights) do
    vim.api.nvim_set_hl(0, group, properties)
  end
end

return M
