local function setup()
	require("crates").setup({
		null_ls = {
			enabled = true,
		},
	})
end

return {
	"saecki/crates.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	event = "BufRead Cargo.toml",
	config = setup,
}
