#!/usr/bin/env lua

local core = require('setansi.core')
local colors = core.get_colors()

local setansi = {}

setansi.normal = {
  a = { bg = colors.color4, fg = colors.color0 },
  b = { bg = colors.color0, fg = colors.color4 },
  c = { bg = colors.transparent, fg = colors.color4 },
  z = { bg = colors.color4, fg = colors.color0 },
  y = { bg = colors.color0, fg = colors.color4 },
  x = { bg = colors.transparent, fg = colors.color4 },
}

setansi.insert = {
  a = { bg = colors.color2, fg = colors.color0 },
  b = { bg = colors.color0, fg = colors.color2 },
  c = { bg = colors.transparent, fg = colors.color2 },
  z = { bg = colors.color2, fg = colors.color0 },
  y = { bg = colors.color0, fg = colors.color2 },
  x = { bg = colors.transparent, fg = colors.color2 },
}

setansi.command = {
  a = { bg = colors.color6, fg = colors.color0 },
  b = { bg = colors.color0, fg = colors.color6 },
  c = { bg = colors.transparent, fg = colors.color6 },
  z = { bg = colors.color6, fg = colors.color0 },
  y = { bg = colors.color0, fg = colors.color6 },
  x = { bg = colors.transparent, fg = colors.color6 },
}

setansi.visual = {
  a = { bg = colors.color5, fg = colors.color0 },
  b = { bg = colors.color0, fg = colors.color5 },
  c = { bg = colors.transparent, fg = colors.color5 },
  z = { bg = colors.color5, fg = colors.color0 },
  y = { bg = colors.color0, fg = colors.color5 },
  x = { bg = colors.transparent, fg = colors.color5 },
}

setansi.replace = {
  a = { bg = colors.color11, fg = colors.color0 },
  b = { bg = colors.color0, fg = colors.color11 },
  c = { bg = colors.transparent, fg = colors.color11 },
  z = { bg = colors.color11, fg = colors.color0 },
  y = { bg = colors.color0, fg = colors.color11 },
  x = { bg = colors.transparent, fg = colors.color11 },
}

setansi.inactive = {
  a = { bg = colors.color0, fg = colors.color7 },
  b = { bg = colors.color0, fg = colors.color7 },
  c = { bg = colors.color0, fg = colors.color7 },
  z = { bg = colors.color0, fg = colors.color7 },
  y = { bg = colors.color0, fg = colors.color7 },
  x = { bg = colors.color0, fg = colors.color7 },
}

return setansi
