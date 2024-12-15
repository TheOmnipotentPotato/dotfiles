return {
	"nvim-treesitter/nvim-treesitter",
	even = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			autotag = {
				enable = true,
			},
			ensure_installed = {
				"lua",
				"vim",
				"vimdoc",
				"c",
				"cpp",
				"python",
				"json",
				"yaml",
				"csv",
				"latex",
				"r",
				"sql",
				"toml",
				"bash",
				"markdown",
				"markdown_inline",
				"html",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
			modules = {},
			auto_install = true,
			sync_install = true,
			ignore_install = {},
		})
	end,
}
