return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                transparent_background = true,
                default_integrations = true,
            })
            vim.cmd([[ colorscheme catppuccin-mocha ]])
        end,
    },
    {
        "EdenEast/nightfox.nvim",
        config = function()
            require("nightfox").setup({
                transparent = true,
            })
        end,
    }
}
