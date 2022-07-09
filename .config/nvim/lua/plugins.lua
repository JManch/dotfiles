-- Plugins

paq = require('paq')

paq {
    'savq/paq-nvim';  
    'Shatur/neovim-ayu';
    {'nvim-treesitter/nvim-treesitter', run = function() cmd 'TSUpdate' end};
    'kyazdani42/nvim-tree.lua';
    'kyazdani42/nvim-web-devicons';
}

-- Ayu

ayu = require('ayu')
ayu.setup({mirage = true, overrides = {},})
ayu.colorscheme()

-- Treesitter

ts = require('nvim-treesitter.configs')
ts.setup {
    ensure_installed = { 
        'bash',
        'c',
        'c_sharp',
        'cmake',
        'comment',
        'cpp',
        'css',
        'dockerfile',
        'go',
        'html',
        'java',
        'javascript',
        'json',
        'latex',
        'lua',
        'make',
        'markdown',
        'python',
        'rust',
        'sql',
        'typescript',
        'vim'
    }, 
    sync_install = false,
    auto_install = true,
    highlight = { enable = true, },
}

-- Tree

tree = require('nvim-tree')
tree.setup()
