return {
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim", -- required
            "sindrets/diffview.nvim", -- optional - Diff integration

            -- Only one of these is needed.
            "nvim-telescope/telescope.nvim", -- optional
            --"ibhagwan/fzf-lua", -- optional
        },
        config = function()
            require("neogit").setup({
                kind = "floating",
            })
            vim.keymap.set("n", "<leader>g", ":Neogit<CR>")
        end,
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({})
        end,
    },
    -- { "tpope/vim-fugitive" },
}
