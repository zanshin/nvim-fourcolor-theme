# Neovim Four Color Theme
This theme is based of the ideas about syntax coloring from [I'm sorry but
everyone is getting syntax highlighting
wrong](https://tonsky.me/blog/syntax-highlighting/ "I'm sorry but everyone is
getting syntax highlighting wrong").

Rather than highlight every single element in its own vibrant color, this theme
uses four colors and only highlights comments, constants, strings, and high
level definitions.

## Installation
If you use lazy.nvim:

    {
    "zanshin/nvim-fourcolor-theme",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme "fourcolor"
    end,
    }

If you use packer.nvim:

    use "zanshin/nvim-fourcolor-theme"
    -- Then in your config:
    vim.cmd.colorscheme "fourcolor"

If you use vim-plug:

    Plug 'zanshin/nvim-fourcolor-theme'
    " Then in your config:
    colorscheme fourcolor
