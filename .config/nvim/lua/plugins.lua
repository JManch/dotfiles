-- Plugins

paq = require('paq')

paq {
    'savq/paq-nvim';  
    'Shatur/neovim-ayu';
    {'nvim-treesitter/nvim-treesitter', run = function() cmd 'TSUpdate' end};
    'kyazdani42/nvim-tree.lua';
    'kyazdani42/nvim-web-devicons'; -- optional addition for nvim-tree
    'lukas-reineke/indent-blankline.nvim';
    'goolord/alpha-nvim';
    'lewis6991/impatient.nvim';
    'windwp/nvim-autopairs';
    'neovim/nvim-lspconfig';
    'williamboman/nvim-lsp-installer';
}

-- impatient

impatient = require('impatient')
-- impatient.enable_profile()

-- Ayu

ayu = require('ayu')
ayu.setup({mirage = true, overrides = {},})
ayu.colorscheme()

-- Treesitter

ts = require('nvim-treesitter.configs')
ts.setup {
    -- Check docs with -h nvim-treesitter-modules
    auto_install = true,
    highlight = { enable = true, }, -- syntax highlighting
    -- incremental_selection = { enable = true }, -- uses extra keybings
}

-- Tree

tree = require('nvim-tree')
tree.setup()

-- indent-blankline

indent_blankline = require('indent_blankline')
indent_blankline.setup {
    char = "▏",
    use_treesitter = true,
    show_first_indent_level = false,
    filetype_exclude = {
        'help',
        'dashboard',
        'git',
        'markdown',
        'text',
        'terminal',
        'lspinfo',
        'packer',
        'NvimTree',
    },
    buftype_exclude = {
        'terminal',
        'nofile',
    },
}

vim.g.indentLine_fileTypeExclude = 'alpha'

-- alpha-nvim

alpha = require('alpha')
dashboard = require('alpha.themes.dashboard')

local banner = {
    "       __           __               ",
    "      / /___  _____/ /_  __  ______ _",
    " __  / / __ \\/ ___/ __ \\/ / / / __ `/",
    "/ /_/ / /_/ (__  ) / / / /_/ / /_/ / ",
    "\\____/\\____/____/_/ /_/\\__,_/\\__,_/  ",
}

dashboard.section.header.val = banner

dashboard.section.buttons.val = {
    dashboard.button('e', '  New file', ':ene <BAR> startinsert<CR>'),
    dashboard.button('o', '  Open file', ':NvimTreeOpen<CR>'),
    dashboard.button('s', '  Settings', ':e $MYVIMRC<CR>'),
    dashboard.button('u', '  Update plugins', ':PaqUpdate<CR>'),
    dashboard.button('q', '  Quit', ':qa<CR>'),
}

alpha.setup(dashboard.config)

-- nvim-autopairs

nvim_autopairs = require('nvim-autopairs')
nvim_autopairs.setup()

-- nvim-lspconfig

