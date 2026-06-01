vim.pack.add({ "https://github.com/folke/snacks.nvim" })
require("snacks").setup({
	indent = { enabled = true },
	debug = { enabled = true },
	scroll = { enabled = true },
	explorer = { enabled = true, replace_netrw = true, trash = true },
})
vim.keymap.set("", "<leader>e", function()
	Snacks.explorer()
end, { desc = "File Explorer" })
