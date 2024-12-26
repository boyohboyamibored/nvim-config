return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },

		keys = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>fc", function()
				builtin.find_files({
					cwd = "~/.config/nvim",
					hidden = false, -- don't show hidden
				})
			end, { desc = "Telescope nvim config" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",

		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
						require("telescope").load_extension("ui-select"),
					},
				},
			})
		end,
	},
}
