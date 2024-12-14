return {
    {
        "williamboman/mason.nvim",

        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_pending = " ",
                        package_installed = " ",
                        package_uninstalled = " ",
                    },
                },
            })
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = { auto_install = true },

        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pylsp", "markdown_oxide", "rust_analyzer" },
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
            lspconfig.pylsp.setup({ capabilities = capabilities }) -- python
            lspconfig.ruff.setup({ capabilities = capabilities }) -- python
            lspconfig.rust_analyzer.setup({
                settings = {
                    ["rust-analyzer"] = {
                        check = {
                            command = "clippy",
                        },
                        diagnostics = {
                            enable = true,
                        },
                    },
                },
                capabilities = capabilities,
            })
            lspconfig.ast_grep.setup({ capabilities = capabilities })
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
