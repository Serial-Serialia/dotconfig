-- This are runners used with neotest. Since thier configuration mostly are simple,
-- they are returned on a table without separation in multiple files.

return { {
	"Issafalcon/neotest-dotnet",
	lazy = false,
	dependencies = {
		"nvim-neotest/neotest",
	},
} }
