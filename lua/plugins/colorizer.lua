return {
    "NvChad/nvim-colorizer.lua",
    opts = {
        filetypes = { "*" },
        user_default_options = {
            RGB = true, -- #RGB hex codes
            RRGGBB = true, -- #RRGGBB hex codes
            names = true, -- "Name" codes like Blue or blue
            RRGGBBAA = true, -- #RRGGBBAA hex codes
            AARRGGBB = false, -- 0xAARRGGBB hex codes
            rgb_fn = false, -- CSS rgb() and rgba() functions
            hsl_fn = true, -- CSS hsl() and hsla() functions
            css = true, -- Enable all CSS features: rgb_fn, h    sl_fn, names, RGB, RRGGBB
            css_fn = false, -- Enable all CSS *functions*: rg    b_fn, hsl_fn
            -- Available modes for `mode`: foreground, backgr    ound,  virtualtext
            mode = "background", -- Set the display mode.
        },
        config = function(_, opts)
            require("colorizer").setup(opts)
        end,
        vim.keymap.set("n", "<leader>ct", "<CMD>ColorizerToggle<CR>", { desc = "Toggle Colorizer" }),
    },
}
