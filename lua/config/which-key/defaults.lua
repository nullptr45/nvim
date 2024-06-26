return {
    mode = { "n", "v" },
    w = { ":w!<CR>", "Save" },
    q = { ":q!<CR>", "Quit" },
    h = { ":noh<CR>", "No Highlight" },
    W = { ":noautocmd w<CR>", "Save Without Formatting" },
    i = {
        name = "Sessions",
        s = { "<cmd>lua require('persistence').load()<cr>", "Load Session" },
        l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Load Last Session" },
        d = { "<cmd>lua require('persistence').stop()<cr>", "Stop Persistence" },
    },
    f = {
        name = "+Project",
        d = { require("telescope.builtin").lsp_document_symbols, "Document Symbols" },
        w = { require("telescope.builtin").lsp_dynamic_workspace_symbols, "Workspace Symbols" },
        f = { ":Telescope find_files<CR>", "Find File" },
        h = { ":Telescope help_tags<CR>", "Find Help" },
        m = { ":Telescope man_pages<CR>", "Man Pages" },
        t = { ":Telescope live_grep<CR>", "Find Text" },
        b = { ":Teleacope buffers<CR>", "Buffers" },
        e = { ":Neotree toggle left<CR>", "File Explorer" },
    },
    g = {
        name = "+Git",
        k = { "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>", "Prev Hunk" },
        l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
        p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
        r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
        R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
        j = { "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>", "Next Hunk" },
        s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
        u = {
            "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
            "Undo Stage Hunk",
        },
        o = { require("telescope.builtin").git_status, "Open changed file" },
        b = { require("telescope.builtin").git_branches, "Checkout branch" },
        c = { require("telescope.builtin").git_commits, "Checkout commit" },
        C = {
            require("telescope.builtin").git_bcommits,
            "Checkout commit(for current file)",
        },
        d = {
            "<cmd>Gitsigns diffthis HEAD<cr>",
            "Git Diff",
        },
        U = { ":UndotreeToggle<CR>", "Toggle UndoTree" },
    },
    l = {
        name = "+LSP",
        a = { vim.lsp.buf.code_action, "Code Action" },
        A = { vim.lsp.buf.range_code_action, "Range Code Actions" },
        s = { vim.lsp.buf.signature_help, "Display Signature Information" },
        r = { vim.lsp.buf.rename, "Rename all references" },
        f = { vim.lsp.buf.format, "Format" },
        i = { require("telescope.builtin").lsp_implementations, "Implementation" },
        l = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document Diagnostics (Trouble)" },
        L = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace Diagnostics (Trouble)" },
        w = { require("telescope.builtin").diagnostics, "Diagnostics" },
        t = { require("telescope").extensions.refactoring.refactors, "Refactor" },

        W = {
            name = "+Workspace",
            a = { vim.lsp.buf.add_workspace_folder, "Add Folder" },
            r = { vim.lsp.buf.remove_workspace_folder, "Remove Folder" },
            l = {
                function()
                    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
                end,
                "List Folders",
            },
        },
    },
    T = {
        name = "+Todo",
        t = { "<cmd>TodoTelescope<cr>", "Todo" },
        T = { "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", "Todo/Fix/Fixme" },
        x = { "<cmd>TodoTrouble<cr>", "Todo (Trouble)" },
        X = { "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr><cr>", "Todo/Fix/Fixme (Trouble)" },
    },
    d = {
        name = "Debug",
        b = { require("dap").toggle_breakpoint, "Breakpoint" },
        c = { require("dap").continue, "Continue" },
        i = { require("dap").step_into, "Into" },
        o = { require("dap").step_over, "Over" },
        O = { require("dap").step_out, "Out" },
        r = { require("dap").repl.toggle, "Repl" },
        l = { require("dap").run_last, "Last" },
        u = { require("dapui").toggle, "UI" },
        x = { require("dap").terminate, "Exit" },
    },
    n = {
        name = "+Neogen",
        g = { "<cmd>lua require('neogen').generate()<cr>", "Generate Annotatin" },
        f = { "<cmd>lua require('neogen').generate({ type = 'func' })<cr>", "Generate Function Annotation" },
        t = { "<cmd>lua require('neogen').generate({ type = 'type' })<cr>", "Generate Type Annotation" },
    },
}
