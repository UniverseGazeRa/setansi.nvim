local setansi = {}

setansi.normal = {
  a = { ctermbg = 4, ctermfg = 0 },
  b = { ctermbg = 0, ctermfg = 4 },
  c = { ctermbg = 0, ctermfg = 4 },
  z = { ctermbg = 4, ctermfg = 0 },
  y = { ctermbg = 0, ctermfg = 4 },
  x = { ctermbg = 0, ctermfg = 4 },
}

setansi.insert = {
  a = { ctermbg = 2, ctermfg = 0 },
  b = { ctermbg = 0, ctermfg = 2 },
  c = { ctermbg = 0, ctermfg = 2 },
  z = { ctermbg = 2, ctermfg = 0 },
  y = { ctermbg = 0, ctermfg = 2 },
  x = { ctermbg = 0, ctermfg = 2 },
}

setansi.command = {
  a = { ctermbg = 6, ctermfg = 0 },
  b = { ctermbg = 0, ctermfg = 6 },
  c = { ctermbg = 0, ctermfg = 6 },
  z = { ctermbg = 6, ctermfg = 0 },
  y = { ctermbg = 0, ctermfg = 6 },
  x = { ctermbg = 0, ctermfg = 6 },
}

setansi.visual = {
  a = { ctermbg = 5, ctermfg = 0 },
  b = { ctermbg = 0, ctermfg = 5 },
  c = { ctermbg = 0, ctermfg = 5 },
  z = { ctermbg = 5, ctermfg = 0 },
  y = { ctermbg = 0, ctermfg = 5 },
  x = { ctermbg = 0, ctermfg = 5 },
}

setansi.replace = {
  a = { ctermbg = 11, ctermfg = 0 },
  b = { ctermbg = 0, ctermfg = 11 },
  c = { ctermbg = 0, ctermfg = 11 },
  z = { ctermbg = 11, ctermfg = 0 },
  y = { ctermbg = 0, ctermfg = 11 },
  x = { ctermbg = 0, ctermfg = 11 },
}

setansi.inactive = {
  a = { ctermbg = 0, ctermfg = 7 },
  b = { ctermbg = 0, ctermfg = 0, bold = true },
  c = { ctermbg = 0, ctermfg = 0 },
  z = { ctermbg = 0, ctermfg = 7 },
  y = { ctermbg = 0, ctermfg = 0, bold = true },
  x = { ctermbg = 0, ctermfg = 0 },
}

return setansi
