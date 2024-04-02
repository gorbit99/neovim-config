local function setup()
	local cmp = require("cmp")
	local luasnip = require("luasnip")

	local opts = { noremap = true, silent = true }
	vim.keymap.set("i", "<C-j>", function()
		if luasnip.jumpable(1) then
			luasnip.jump(1)
		end
	end, opts)
	vim.keymap.set("i", "<C-J>", function()
		if luasnip.jumpable(-1) then
			luasnip.jump(-1)
		end
	end, opts)
	vim.keymap.set("i", "<C-h>", function()
		if luasnip.choice_active() then
			luasnip.change_choice(1)
		end
	end, opts)
	vim.keymap.set("i", "<C-l>", function()
		if luasnip.choice_active() then
			luasnip.change_choice(-1)
		end
	end, opts)

	local lspsnips = {}

	cmp.setup({
		snippet = {
			expand = function(args)
				if lspsnips[args.body] then
					luasnip.snip_expand(lspsnips[args.body])
				else
					luasnip.lsp_expand(args.body)
				end
			end,
		},
		window = {
			completion = cmp.config.window.bordered(),
			documentation = cmp.config.window.bordered(),
		},
		mapping = cmp.mapping.preset.insert({
			["<C-b>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-Space>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.abort(),
			["<C-y>"] = cmp.mapping.confirm(),
		}),

		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "luasnip" },
			{ name = "crates" },
		}, {
			{ name = "buffer" },
		}),
	})

	cmp.setup.filetype("gitcommit", {
		sources = cmp.config.sources({
			{ name = "git" },
		}, {
			{ name = "buffer" },
		}),
	})

	cmp.setup.cmdline({ "/", "?" }, {
		mapping = cmp.mapping.preset.cmdline(),
		sources = {
			{ name = "buffer" },
		},
	})

	cmp.setup.cmdline(":", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = "path" },
		}, {
			{ name = "cmdline" },
		}),
	})
end

return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp",
		"L3MON4D3/LuaSnip",
		"petertriho/cmp-git",
		"saadparwaiz1/cmp_luasnip",
	},
	config = setup,
}
