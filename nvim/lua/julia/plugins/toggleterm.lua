return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup()

			local keymap = vim.keymap

			keymap.set("n", "<leader>tr", "<cmd>ToggleTerm direction=float<cr>", { desc = "Open floating terminal" })
		end,
	},
}
