#!/usr/bin/env lua

local core = require('setansi.core')
local colors = core.get_colors()

local setansi = {}

setansi.normal = {
  a = { bg = colors[5], fg = colors[1] },
  b = { bg = colors[1], fg = colors[5] },
  c = { bg = colors[1], fg = colors[5] },
  z = { bg = colors[5], fg = colors[1] },
  y = { bg = colors[1], fg = colors[5] },
  x = { bg = colors[1], fg = colors[5] },
}

setansi.insert = {
  a = { bg = colors[3], fg = colors[1] },
  b = { bg = colors[1], fg = colors[3] },
  c = { bg = colors[1], fg = colors[3] },
  z = { bg = colors[3], fg = colors[1] },
  y = { bg = colors[1], fg = colors[3] },
  x = { bg = colors[1], fg = colors[3] },
}

setansi.command = {
  a = { bg = colors[7], fg = colors[1] },
  b = { bg = colors[1], fg = colors[7] },
  c = { bg = colors[1], fg = colors[7] },
  z = { bg = colors[7], fg = colors[1] },
  y = { bg = colors[1], fg = colors[7] },
  x = { bg = colors[1], fg = colors[7] },
}

setansi.visual = {
  a = { bg = colors[6], fg = colors[1] },
  b = { bg = colors[1], fg = colors[6] },
  c = { bg = colors[1], fg = colors[6] },
  z = { bg = colors[6], fg = colors[1] },
  y = { bg = colors[1], fg = colors[6] },
  x = { bg = colors[1], fg = colors[6] },
}

setansi.replace = {
  a = { bg = colors[12], fg = colors[1] },
  b = { bg = colors[1], fg = colors[12] },
  c = { bg = colors[1], fg = colors[12] },
  z = { bg = colors[12], fg = colors[1] },
  y = { bg = colors[1], fg = colors[12] },
  x = { bg = colors[1], fg = colors[12] },
}

setansi.inactive = {
  a = { bg = colors[1], fg = colors[8] },
  b = { bg = colors[1], fg = colors[8] },
  c = { bg = colors[1], fg = colors[8] },
  z = { bg = colors[1], fg = colors[8] },
  y = { bg = colors[1], fg = colors[8] },
  x = { bg = colors[1], fg = colors[8] },
}

return setansi
