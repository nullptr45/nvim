return {
    -- Autotags
    {
        "windwp/nvim-ts-autotag",
        opts = {},
    },

    -- comments
    {
        "numToStr/Comment.nvim",
        opts = {},
        lazy = false,
    },
    -- useful when there are embedded languages in certain types of files (e.g. Vue or React)
    { "joosepalviste/nvim-ts-context-commentstring", lazy = true },

    -- Neovim notifications and LSP progress messages
    {
        "j-hui/fidget.nvim",
        branch = "legacy",
        enabled = false,
        config = function()
            require("fidget").setup({
                window = { blend = 0 },
            })
        end,
    },

    -- Smooth scrolling neovim plugin written in lua
    {
        "karb94/neoscroll.nvim",
        config = function()
            require("neoscroll").setup({
                stop_eof = true,
                easing_function = "sine",
                hide_cursor = true,
                cursor_scrolls_alone = true,
            })
        end,
    },

    -- Add/change/delete surrounding delimiter pairs with ease
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup()
        end,
    },

    -- Neovim setup for init.lua and plugin development with full signature help, docs and completion for the nvim lua API
    {
        "folke/neodev.nvim",
        config = function()
            require("neodev").setup({
                library = { plugins = { "neotest" }, types = true },
            })
        end,
    },

    -- Neovim Lua plugin to automatically manage character pairs. Part of 'mini.nvim' library.
    {
        "echasnovski/mini.pairs",
        event = "VeryLazy",
        config = function(_, opts)
            require("mini.pairs").setup(opts)
        end,
    },

    -- Lorem Ipsum generator for Neovim
    {
        "derektata/lorem.nvim",
        config = function()
            local lorem = require("lorem")
            lorem.setup({
                sentenceLength = "mixedShort",
                comma = 1,
            })
        end,
    },

    -- Indent guide for Neovim
    {
        "lukas-reineke/indent-blankline.nvim",
        event = { "BufReadPost", "BufNewFile" },
        enabled = false,
        version = "2.1.0",
        opts = {
            char = "┊",
            -- char = "│",
            filetype_exclude = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
            show_trailing_blankline_indent = false,
            show_current_context = false,
        },
    },

    -- editor config support
    {
        "editorconfig/editorconfig-vim",
    },

    -- breadcrumbs
    {
        "LunarVim/breadcrumbs.nvim",
        config = function()
            require("breadcrumbs").setup()
        end,
    },
    -- Simple winbar/statusline plugin that shows your current code context
    {
        "SmiteshP/nvim-navic",
        config = function()
            local icons = require("config.icons")
            require("nvim-navic").setup({
                highlight = true,
                lsp = {
                    auto_attach = true,
                    preference = { "typescript-tools" },
                },
                click = true,
                separator = " " .. icons.ui.ChevronRight .. " ",
                depth_limit = 0,
                depth_limit_indicator = "..",
                icons = {
                    File = " ",
                    Module = " ",
                    Namespace = " ",
                    Package = " ",
                    Class = " ",
                    Method = " ",
                    Property = " ",
                    Field = " ",
                    Constructor = " ",
                    Enum = " ",
                    Interface = " ",
                    Function = " ",
                    Variable = " ",
                    Constant = " ",
                    String = " ",
                    Number = " ",
                    Boolean = " ",
                    Array = " ",
                    Object = " ",
                    Key = " ",
                    Null = " ",
                    EnumMember = " ",
                    Struct = " ",
                    Event = " ",
                    Operator = " ",
                    TypeParameter = " ",
                },
            })
        end,
    },

    -- persist sessions
    {
        "folke/persistence.nvim",
        event = "BufReadPre", -- this will only start session saving when an actual file was opened
        opts = {},
    },

    -- better code annotation
    {
        "danymat/neogen",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "L3MON4D3/LuaSnip",
        },
        config = function()
            local neogen = require("neogen")

            neogen.setup({
                snippet_engine = "luasnip"
            })
        end,
        -- version = "*"
    },

    -- {
    --   "xiyaowong/transparent.nvim"
    -- },
}
