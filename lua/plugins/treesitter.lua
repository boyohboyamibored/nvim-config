return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate", -- update on load

	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"c",
				"css",
				"lua",
				"python",
				"vim",
				"vimdoc",
				"html",
				"markdown",
				"markdown_inline",
				"bash",
			},
			auto_install = true,
		})
	end,
}
