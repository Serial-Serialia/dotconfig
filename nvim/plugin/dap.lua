vim.pack.add({
	"https://github.com/mfussenegger/nvim-dap",
	"https://github.com/rcarriga/nvim-dap-ui",
	"https://github.com/nvim-neotest/nvim-nio",
	"https://github.com/jay-babu/mason-nvim-dap.nvim",
	"https://github.com/theHamsta/nvim-dap-virtual-text",
	"https://codeberg.org/mfussenegger/nvim-dap-python",
})

vim.keymap.set("n", "<leader>dPt", function()
	require("dap-python").test_method()
end, { desc = "Debug Method" })
vim.keymap.set("n", "<leader>dPc", function()
	require("dap-python").test_class()
end, { desc = "Debug Class" })

require("dap-python").setup("debugpy-adapter")

vim.keymap.set("n", "<leader>dB", function()
	require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
end, { desc = "Breakpoint Condition" })
vim.keymap.set("n", "<leader>db", function()
	require("dap").toggle_breakpoint()
end, { desc = "Toggle Breakpoint" })
vim.keymap.set("n", "<leader>dc", function()
	require("dap").continue()
end, { desc = "Run/Continue" })
vim.keymap.set("n", "<leader>di", function()
	require("dap").step_into()
end, { desc = "Step Into" })
vim.keymap.set("n", "<leader>do", function()
	require("dap").step_out()
end, { desc = "Step Out" })
vim.keymap.set("n", "<leader>dO", function()
	require("dap").step_over()
end, { desc = "Step Over" })
vim.keymap.set("n", "<leader>dr", function()
	require("dap").repl.toggle()
end, { desc = "Toggle REPL" })
vim.keymap.set("n", "<leader>dt", function()
	require("dap").terminate()
end, { desc = "Terminate" })
vim.keymap.set("n", "<leader>du", function()
	require("dapui").toggle({})
end, { desc = "Dap UI" })
vim.keymap.set({ "n", "x" }, "<leader>de", function()
	require("dapui").eval()
end, { desc = "Eval" })

require("mason-nvim-dap").setup({
	-- Makes a best effort to setup the various debuggers with
	-- reasonable debug configurations
	automatic_installation = true,

	-- You can provide additional configuration to the handlers,
	-- see mason-nvim-dap README for more information
	handlers = {},

	-- You'll need to check that you have the required things installed
	-- online, please don't ask me how to install them :)
	ensure_installed = {
		"debugpy",
		"netcoredbg",
		"codelldb",
	},
})

local dap = require("dap")
local dapui = require("dapui")

if not dap.adapters["netcoredbg"] then
	require("dap").adapters["netcoredbg"] = {
		type = "executable",
		command = vim.fn.exepath("netcoredbg"),
		args = { "--interpreter=vscode" },
		options = {
			detached = false,
		},
	}
end
for _, lang in ipairs({ "cs", "fsharp", "vb" }) do
	if not dap.configurations[lang] then
		dap.configurations[lang] = {
			{
				type = "netcoredbg",
				name = "Launch file",
				request = "launch",
				---@diagnostic disable-next-line: redundant-parameter
				program = function()
					return vim.fn.input("Path to dll: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
			},
		}
	end
end
if not dap.adapters["codelldb"] then
	dap.adapters.cppdbg = {
		id = "cppdbg",
		type = "executable",
		command = "/home/hyprconfig/.vscode/extensions/ms-vscode.cpptools-1.31.4-linux-x64/debugAdapters/bin/OpenDebugAD7",
	}
end
for _, lang in ipairs({ "c", "cpp" }) do
	dap.configurations[lang] = {
		{
			name = "Launch file",
			type = "cppdbg",
			request = "launch",
			program = function()
				return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
			end,
			cwd = "${workspaceFolder}",
			stopAtEntry = false,
			mIMode = "lldb",
			miDebuggerPath = "/usr/bin/gdb",
		},
		{
			name = "Attach to gdbserver :1234",
			type = "cppdbg",
			request = "launch",
			MIMode = "gdb",
			MiDebuggerServerAddress = "localhost:1234",
			MiDebuggerPath = "/usr/bin/gdb",
			cwd = "${workspaceFolder}",
			program = function()
				return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
			end,
		},
	}
end

vim.fn.sign_define("DapBreakpoint", { text = "●" })

dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open({})
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close({})
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close({})
end
