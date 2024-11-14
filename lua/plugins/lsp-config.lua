return {
    {
        "williamboman/mason.nvim",

        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = { auto_install = true },

        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pylsp", "ruff", "markdown_oxide", "rust_analyzer" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",

        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            local keymap = vim.keymap

            lspconfig.lua_ls.setup({ capabilities = capabilities }) -- the lsps must be installed
            lspconfig.ruff.setup({ capabilities = capabilities })   -- python
            lspconfig.pylsp.setup({ capabilities = capabilities })  -- python
            lspconfig.ast_grep.setup({ capabilities = capabilities })
            lspconfig.html.setup({ capabilities = capabilities })
            lspconfig.bacon_ls.setup({ capabilities = capabilities })
            lspconfig.markdown_oxide.setup({
                capabilities = vim.tbl_deep_extend(
                    "force",
                    capabilities,
                    { workspace = { didChangeWatchedFiles = { dynamicRegistration = true } } }
                ),
            })
            keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Get info for character under cursor" }) -- already a default
            keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "View code actions" })
        end,
    },
}
