vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/mason-org/mason-lspconfig.nvim",
})
require("mason").setup()
require("mason-lspconfig").setup({
	automatic_enable = {
		"ts_ls",
		"lua_ls",
		"rust_analyzer",
		"jdtls",
		"java",
	},
})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Go to Definition" })

-- 跳转到声明（某些语言中定义和声明可能不同）
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = bufnr, desc = "Go to Declaration" })

-- 跳转到类型定义（如 TypeScript 中跳转到类型声明）
-- vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = bufnr, desc = "Go to Type Definition" })

-- 跳转到实现（接口/抽象方法的实现）
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = bufnr, desc = "Go to Implementation" })

-- 查看引用（谁调用了这个函数/变量）
vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = bufnr, desc = "Go to References" })

vim.api.nvim_create_user_command("Format", function()
	vim.lsp.buf.format()
end, { desc = "format" })

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function()
		vim.lsp.buf.format()
	end,
})

-- auto completion
vim.pack.add({ "https://github.com/saghen/blink.cmp" })

require("blink.cmp").setup({
	keymap = {
		preset = "default",
		["<Up>"] = { "select_prev", "fallback" },
		["<Down>"] = { "select_next", "fallback" },
		["<C-y>"] = { "select_and_accept", "fallback" },
		-- disable a keymap from the preset
		["<C-e>"] = false, -- or {}

		-- show with a list of providers
		["<C-space>"] = {
			function(cmp)
				cmp.show({ providers = { "snippets" } })
			end,
		},

		-- control whether the next command will be run when using a function
		["<C-n>"] = {
			function(cmp)
				if some_condition then
					return
				end -- runs the next command
				if some_other_condition then
					return "a"
				end -- simulate keypresses, doesn't run the next command
				return true -- doesn't run the next command
			end,
			"select_next",
		},
	},
	appearance = {
		nerd_font_variant = "mono",
	},
	completion = {
		documentation = { auto_show = false },
	},
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
	fuzzy = {
		implementation = "prefer_rust_with_warning",
	},
})
