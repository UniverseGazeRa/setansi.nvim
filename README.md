# setvtrgb16.nvim

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
  - [Enable the feline theme (untested with pywal16, I don't use feline)](#enable-the-feline-theme-untested-with-pywal16-i-dont-use-feline)
  - [Using the core to get the colors](#using-the-core-to-get-the-colors)
  - [How it works](#how-it-works)
  - [Hack me](#hack-me)
  - [Thanks](#thanks)
  - [Enjoy](#enjoy)

<!--toc:end-->

## Screenshots

(WIP)


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

(WIP)
<!-- You can install this plugin with packer: -->
<!---->
<!-- ```lua -->
<!-- use { 'uZer/pywal16.nvim', as = 'pywal16' } -->
<!-- ``` -->
<!---->
<!-- With lazy: -->
<!---->
<!-- ```lua -->
<!-- { -->
<!--   'uZer/pywal16.nvim', -->
<!--   -- for local dev replace with: -->
<!--   -- dir = '~/your/path/pywal16.nvim', -->
<!--   config = function() -->
<!--     vim.cmd.colorscheme("pywal16") -->
<!--   end, -->
<!-- } -->
<!-- ``` -->
<!---->
<!-- With vim-plug: -->
<!---->
<!-- ```vim -->
<!-- Plug 'uZer/pywal16.nvim', { 'as': 'pywal16' } -->
<!-- ``` -->
<!---->
<!-- ## Active theme -->
<!---->
<!-- To enable the theme, call this in your neovim config: -->
<!---->
<!-- ```lua -->
<!-- local pywal16 = require('pywal16') -->
<!---->
<!-- pywal16.setup() -->
<!-- ``` -->
<!---->
<!-- Or with vim script: -->
<!---->
<!-- ```vim -->
<!-- colorscheme pywal16 -->
<!-- ``` -->
<!---->
<!-- > It will set automatically the `vim.opt.termguicolors` to true -->
<!---->
<!-- ## Enable lualine theme -->
<!---->
<!-- Place this in your lualine config: -->
<!---->
<!-- ```lua -->
<!-- local lualine = require('lualine') -->
<!---->
<!-- lualine.setup { -->
<!--   options = { -->
<!--     theme = 'pywal16-nvim', -->
<!--   }, -->
<!-- } -->
<!-- ``` -->
<!---->
<!-- ## Enable the feline theme -->
<!---->
<!-- _note: this part comes from AlphaTechnolog project I forked, I don't use feline -->
<!-- so I never tested this part of the theme_ -->
<!---->
<!-- You can put this to your config to activate the feline config: -->
<!---->
<!-- ```lua -->
<!-- local present, feline = pcall(require, 'feline') -->
<!---->
<!-- if not present then -->
<!--   return -->
<!-- end -->
<!---->
<!-- local present, pywal16_feline = pcall(require, 'pywal16.feline') -->
<!---->
<!-- if not present then -->
<!--   return -->
<!-- end -->
<!---->
<!-- feline.setup({ -->
<!--   components = pywal16_feline, -->
<!-- }) -->
<!-- ``` -->
<!---->
<!-- Then you should see the feline bar working successfully. -->
<!---->
<!-- ## Using the core to get the colors -->
<!---->
<!-- If you want to get the colors into a lua dictionary: -->
<!---->
<!-- ```lua -->
<!-- local colors = require('setvtrgb.core').get_colors() -->
<!-- ``` -->
<!---->
## How it works

There's a script in my bin, the theme-switchervt which uses setvtrgb to change
the palette, and then then function _create_nvim_ creates a palette called
**curr-theme.vim**. Basically, the inner working is the same as the cited
pywal16.nvim, as it reads the file

```vim
let color0  = "#110914"
let color1  = "#A378B6"
let color2  = "#B687AD"
let color3  = "#D9A2AF"
let color4  = "#F8DDAD"
let color5  = "#AD90CF"
let color6  = "#D2ACD6"
let color7  = "#e3cfe2"
let color8  = "#9e909e"
let color9  = "#A378B6"
let color10 = "#B687AD"
let color11 = "#D9A2AF"
let color12 = "#F8DDAD"
let color13 = "#AD90CF"
let color14 = "#D2ACD6"
let color15 = "#e3cfe2"
```

without the special fields background, foreground and cursor. The theme only
reads this file/these variables and then create a colors dictionary to create a
theme based in the colors.

## Hack me

I'm free to discussion regarding the whys and hows of this little project. I'm
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
