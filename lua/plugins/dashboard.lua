return {
    "nvimdev/dashboard-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VimEnter",
    config = function()
        local logo = [[
       ╔╦╗╦ ╦╦ ╦  ╦ ╦╦╦  ╦    ╔╗ ╔═╗  ╔╦╗╔═╗╔╗╔╔═╗  ╔═╗╦ ╦  ╦  ╔═╗╦═╗╔╦╗
        ║ ╠═╣╚╦╝  ║║║║║  ║    ╠╩╗║╣    ║║║ ║║║║║╣   ║ ║╠═╣  ║  ║ ║╠╦╝ ║║
        ╩ ╩ ╩ ╩   ╚╩╝╩╩═╝╩═╝  ╚═╝╚═╝  ═╩╝╚═╝╝╚╝╚═╝  ╚═╝╩ ╩  ╩═╝╚═╝╩╚══╩╝

        ]]

        logo = string.rep("\n", 8) .. logo .. "\n\n"

        require("dashboard").setup({
            theme = "doom",
            config = {
                header = vim.split(logo, "\n"),
                center = {
                    {
                        icon = "",
                        icon_hl = "group",
                        desc = "New File",
                        desc_hl = "group",
                        key = "n",
                        key_hl = "group",
                        action = "enew",
                    },
                    {
                        icon = "",
                        icon_hl = "group",
                        desc = "Recent files",
                        desc_hl = "group",
                        key = "r",
                        key_hl = "group",
                        action = "Telescope oldfiles",
                    },
                    {
                        icon = "",
                        icon_hl = "group",
                        desc = "Find word",
                        desc_hl = "group",
                        key = "g",
                        key_hl = "group",
                        action = "Telescope live_grep",
                    },
                    {
                        icon = "",
                        icon_hl = "group",
                        desc = "Neovim config",
                        desc_hl = "group",
                        key = "c",
                        key_hl = "group",
                        action = function()
                            require("telescope.builtin").find_files({
                                cwd = "~/.config/nvim",
                                hidden = false, -- don't show hidden
                            })
                        end,
                    },
                },
                footer = { "Vim is love, Vim is life." },
            },
        })
    end,
}
