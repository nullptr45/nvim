vim.g.mapleader = " "				            -- Change leader to space
vim.g.maplocalleader = " "			            -- Change localleader to space

vim.g.loaded_netrw = 1                          -- disable netrw
vim.g.loaded_netrwPlugin = 1                    -- disable netrw

vim.opt.hlsearch = false			            -- Disable highlight search
vim.opt.incsearch = true 			            -- Use incremental search
vim.opt.backup = false				            -- Don't create backup file
vim.opt.cmdheight = 1				            -- Add more height for displaying command messages
vim.opt.completeopt = { "menuone", "noselect" }	-- Autocomplete settings
vim.opt.conceallevel = 1			            -- Hide `` in md files
vim.opt.mouse = "a"				                -- Allow mouse usage
vim.opt.showmode = false			            -- We don't need this anymore
vim.opt.showtabline = 0				            -- Always show tabs
vim.opt.smartcase = true			            -- Smart case
vim.opt.smartindent = true			            -- Smart indenting
vim.opt.swapfile = false			            -- Don't create swap file
vim.opt.termguicolors = true 		            -- Good colors
vim.opt.timeoutlen = 1000			            -- Time to wait for a keymap
vim.opt.undofile = true				            -- Enable persistant undo
vim.opt.updatetime = 100			            -- Faster completion

vim.opt.expandtab = true			            -- Convert tabs to spaces
vim.opt.shiftwidth = 4				            -- 4 space indenting
vim.opt.tabstop = 4				                -- 4 space indenting
vim.opt.softtabstop = 4				            -- 4 space indenting

vim.opt.number = true				            -- Line numbers
vim.opt.relativenumber = true			        -- Relative line numbers
vim.opt.numberwidth = 4                         -- Set line number width
vim.opt.signcolumn = "yes"                      -- Show sign column
vim.opt.wrap = false                            -- Don't wrap text
vim.opt.scrolloff = 8                           -- Ensure 8 lines of context
vim.opt.sidescrolloff = 8                       -- Ensure 8 lines of context
vim.opt.showcmd = false                         -- Don't show command in last line
vim.opt.ruler = false                           -- Don't show ruler
vim.opt.confirm = true                          -- Confirm before closing without saving
vim.opt.fillchars = { eob = " " }               -- Change character at the end of buffer
