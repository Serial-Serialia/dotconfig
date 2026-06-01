return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		menu = {
			width = vim.api.nvim_win_get_width(0) - 4,
		},
		settings = {
			save_on_toggle = true,
		},
	},
	keys = function()
		local keys = {
			{
				"<leader>ha",
				function()
					require("harpoon"):list():add()
				end,
				desc = "Harpoon File",
			},
			{
				"<leader>hl",
				function()
					local harpoon = require("harpoon")
					harpoon.ui:toggle_quick_menu(harpoon:list())
				end,
				desc = "Harpoon Quick Menu",
			},
			{
				"<leader>hn",
				function()
					local harpoon = require("harpoon")
					harpoon:list():next()
				end,
				desc = "Harpoon Next Buffer",
			},
			{
				"<leader>hp",
				function()
					local harpoon = require("harpoon")
					harpoon:list():prev()
				end,
				desc = "Harpoon Previous Buffer",
			},
		}
		return keys
	end,
}
