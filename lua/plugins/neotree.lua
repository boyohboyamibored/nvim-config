return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},

	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
		})
		-- automatically open tree if no file specified
		-- if vim.fn.argc(-1) == 0 then
		--     vim.cmd("NvimTreeFocus")
		-- end
	end,
}
