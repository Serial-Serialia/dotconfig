vim.pack.add({
	"https://github.com/nvim-neotest/neotest",
	"https://github.com/antoinemadec/FixCursorHold.nvim",
})
require("neotest").setup({
	adapters = {
		require("neotest-dotnet"),
	},
})
