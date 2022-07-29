-- Plugins

local paq = require('paq')

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
    'akinsho/bufferline.nvim';
    'nvim-lualine/lualine.nvim';
    'nvim-telescope/telescope.nvim';
    'nvim-lua/plenary.nvim';
    'andweeb/presence.nvim';

    -- LSP stuff
    'williamboman/mason.nvim';
    'williamboman/mason-lspconfig.nvim';
    'VonHeikemen/lsp-zero.nvim';
    'neovim/nvim-lspconfig';
    'hrsh7th/nvim-cmp';
    'hrsh7th/cmp-buffer';
    'hrsh7th/cmp-path';
    'saadparwaiz1/cmp_luasnip';
    'hrsh7th/cmp-nvim-lsp';
    'hrsh7th/cmp-nvim-lua';
    'L3MON4D3/LuaSnip';
    'rafamadriz/friendly-snippets';
}

-- impatient

local impatient = require('impatient')
-- impatient.enable_profile()

-- Ayu

local ayu = require('ayu')
ayu.setup({mirage = true, overrides = {},})
ayu.colorscheme()

-- Treesitter

local ts = require('nvim-treesitter.configs')
ts.setup {
    -- Check docs with -h nvim-treesitter-modules
    auto_install = true,
    highlight = { enable = true, }, -- syntax highlighting
    -- incremental_selection = { enable = true }, -- uses extra keybings
}

-- Tree

local tree = require('nvim-tree')
tree.setup({
    open_on_setup = true,
    open_on_setup_file = false,
    open_on_tab = true,
    sync_root_with_cwd = true,
})

-- indent-blankline

local indent_blankline = require('indent_blankline')
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

local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

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

local nvim_autopairs = require('nvim-autopairs')
nvim_autopairs.setup()

-- bufferline
local bufferline = require('bufferline')
bufferline.setup({
    options = {
        offsets = {
            {
                filetype = "NvimTree",
                text = "",
                highlight = "Directory",
                text_align = "left",
                padding = 1,
            }
        }
    }
})

-- lualine
local lualine = require('lualine')
lualine.setup({
    options = { 
        theme = 'ayu_mirage',
        component_separators = '|',
        section_separators = '',
    }
})

-- telescope
local telescope = require('telescope')
telescope.setup()

-- mason
require('mason.settings').set({
    ui = {
        border = 'rounded';
    }
})

-- lsp zero
local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.setup()

