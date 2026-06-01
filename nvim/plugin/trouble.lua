vim.api.nvim_create_autocmd("LspAttach", {
	callback = function()
		vim.pack.add({
			"https://github.com/folke/trouble.nvim",
		})

		require("trouble").setup()
		vim.keymap.set("n", "<leader>tt", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
		vim.keymap.set(
			"n",
			"<leader>tl",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
			{ desc = "Buffer Diagnostics (Trouble)" }
		)
		vim.keymap.set("n", "<leader>tq", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })
	end,
})
