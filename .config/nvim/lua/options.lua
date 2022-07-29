local g = vim.g
local opt = vim.opt

-- General

opt.mouse = 'a'                         -- Enable mouse support
opt.exrc = true                         -- Load vim config in current dir
opt.smartcase = true                    -- Case-sensitive search
opt.swapfile = false                    -- Don't use a swapfile
opt.undofile = true                     -- Store undo history
opt.completeopt = 
'menuone,noinsert,noselect'             -- Autocomplete options

-- Neovim UI

opt.relativenumber = true               -- Show relative line numbers
opt.number = true                       -- Show absolute line number
-- opt.hlsearch = false                    -- Disable search highlighting
opt.wrap = false                        -- Disable text wrapping
opt.colorcolumn = '80'                  -- Line length marker
opt.termguicolors = true                -- Enable 24-bit RBG colors
opt.scrolloff = 8                       -- Scroll before reaching edge
opt.background = 'dark'                 -- Dark mode
opt.signcolumn = 'number'               -- Move diagnostic icons

-- Tabs, indent

opt.expandtab = true                    -- Use spaces instead of tabs
opt.shiftwidth = 4                      -- Shift 4 spaces when tab
opt.tabstop = 4                         -- 1 tab == 4 spaces
opt.smartindent = true                  -- Autoindent new lines

-- Performance

opt.hidden = true                       -- Enable background buffers
opt.updatetime = 750                    -- Trigger event wait time (ms)

