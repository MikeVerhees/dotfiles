-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "chocolate",
  transparency = false,
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}
M.term = {
  float = {
    relative = "editor",
    row = 0.2,
    col = 0.15,
    width = 0.7,
    height = 0.6,
    border = "single",
  },
}

return M
