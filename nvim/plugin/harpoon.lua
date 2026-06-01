vim.pack.add({{ src = "https://github.com/ThePrimeagen/harpoon", branch = "harpoon2" }})

require("harpoon").setup({
	menu = {
		width = vim.api.nvim_win_get_width(0) - 4,
	},
	settings = {
		save_on_toggle = true,
	},
})
vim.keymap.set("n", "<leader>ha", function()
	require("harpoon"):list():add()
end, { desc = "Harpoon File" })
vim.keymap.set("n", "<leader>hl", function()
	local harpoon = require("harpoon")
	harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon Quick Menu" })
vim.keymap.set("n", "<leader>hn", function()
	local harpoon = require("harpoon")
	harpoon:list():next()
end, { desc = "Harpoon Next Buffer" })
vim.keymap.set("n", "<leader>hp", function()
	local harpoon = require("harpoon")
	harpoon:list():prev()
end, { desc = "Harpoon Previous Buffer" })
