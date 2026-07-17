# setansi.nvim

I'm gradually moving from a GUI environment to the virtual console, so I decided
to have there the benefits we all have with the amazing plugin
[pywal16.nvim](https://github.com/uZer/pywal16.nvim).

So, setvt16rgb.nvim (this repo) is a fork/modification of the mantained
[pywal16.nvim](https://github.com/uZer/pywal16.nvim) aiming to support a
colorful nvim experience for the Linux virtual console.

This colorscheme is compatible with "classic" 16 colors palettes (solarized,
molokai, base16, etc.), and has been made to preserve the "red", "green" and
"yellow" implicit meanings. As uZer noted, the bundled themes that come with
pywal16 don't support the full 16base color spec. I refer to the
[dotfiles repository](https://github.com/uZer/.minimics/tree/master/pywal16/colorschemes),

Currently the theme implemented is the fantastic ANSI based palette from (hamvocke)[https://github.com/hamvocke].

<!--toc:start-->

- [pywal16.nvim](#pywal16nvim)
  - [Screenshots](#screenshots)
  - [Plugin Support](#plugin-support)
  - [Installation](#installation)
  - [Active theme](#active-theme)
  - [Enable lualine theme](#enable-lualine-theme)
  - [Using the core to get the colors](#using-the-core-to-get-the-colors)
  - [How it works](#how-it-works)
  - [Hack me](#hack-me)
  - [Thanks](#thanks)
  - [Enjoy](#enjoy)

<!--toc:end-->

## Screenshots

Currently a WIP!

## Plugin Support

  Currently a WIP!
<!-- - NeoVim (checkhealth...) -->
<!-- - BetterWhitespace -->
<!-- - BufferLine -->
<!-- - Coc -->
<!-- - Diff -->
<!-- - Feline -->
<!-- - GitGutter -->
<!-- - GitSigns -->
<!-- - Indent-BlankLine -->
<!-- - Illuminate -->
<!-- - LSP -->
<!-- - LspSaga -->
<!-- - LspTrouble -->
<!-- - Lualine -->
<!-- - Neogit -->
<!-- - NvimTree -->
<!-- - nvim-navic -->
<!-- - Nvim-scrollbar -->
<!-- - Telescope -->
<!-- - Tree-sitter -->
<!-- - ... -->

Feel free to fork or to PR other integrations.

## Installation

You can install this plugin with packer:

```lua
use { 'uZer/pywal16.nvim', as = 'pywal16' }
```

With lazy:

```lua
{
  'uZer/pywal16.nvim',
  -- for local dev replace with:
  -- dir = '~/your/path/pywal16.nvim',
  config = function()
    vim.cmd.colorscheme("pywal16")
  end,
}
```

With vim-plug:

```vim init.vim
Plug 'uZer/pywal16.nvim', { 'as': 'pywal16' }
```

or in lua as

```lua init.lua
Local PLug = vim.fn["plug#"]
vim.call("plug#begin")
Plug("UniverseGazeRa/setansi.nvim")
vim.call("plug#end")
```

## Lualine theme

To enable the theme, call this in your neovim config:

```lua
local setansi = require('setansi')

setansi.setup()
```

Or with vim script:

```vim
colorscheme setansi
```

## Enable lualine theme

Currently a WIP!

## How it works

When you use the utility setvtrgb your entire terminal changes palette. From (Evan Purkisher)[https://github.com/evanpurkhiser/linux-vt-setcolors/tree/main/example-colors] I got cool themes which you can try as well.
Also, I mention the invaluable repo by (uZer)[https://github.com/uZer/.minimics/tree/master/pywal16/colorschemes], with more base16 palettes.

## Hack me

I'm free to discuss the whys and hows of this little project. I'm
currently learning, so this will be certainly be an invaluable experience.

## Thanks

[dylanaraps](https://github.com/dylanaraps) (pywal)

[eylles](https://github.com/eylles) (pywal16)

[AlphaTechnolog](https://github.com/AlphaTechnolog) (original pywal.nvim)

[uZer](https://github.com/uZer) (og BASE16 setter)

Contributors

## Trivia

- Why this project started?

It was really odd when the plugin pywal16.nvim worked even in the virtual
console. The source of this is that when we define a new palette with the
utility setvtrgb, it just changes the associated color codes (correct me if I'm
wrong tho). Pywal16.nvim worked really well, but the goal for this repo/project
is to have something akin to it, but for the virtual console.

- Why the name setansi?

It's the combination between setvtrgb and the ANSI theme from hamvocke. For now, I have not come up with a name that includes the pywal part ahahah.
