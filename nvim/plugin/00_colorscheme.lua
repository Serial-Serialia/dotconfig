vim.pack.add({
	"https://github.com/rebelot/kanagawa.nvim",
})

---@diagnostic disable-next-line: missing-fields
require("kanagawa").setup({
	styles = {
		comments = { italic = false }, -- Disable italics in comments
	},
})

vim.cmd.colorscheme("kanagawa-wave")
