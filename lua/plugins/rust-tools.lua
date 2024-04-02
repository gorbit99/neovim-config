local function setup()
	print("Hello")
	local capabilities = require("cmp_nvim_lsp").default_capabilities()
	local rust_tools = require("rust-tools")

	rust_tools.setup({
		server = {
			capabilities = capabilities,
		},
	})
end

return {
	"simrat39/rust-tools.nvim",
	requirements = {
		"neovim/nvim-lspconfig",
		"nvim-lua/plenary.nvim",
		"mfussenegger/nvim-dap",
	},
	config = setup,
}
