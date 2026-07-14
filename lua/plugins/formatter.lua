-- ~/.config/nvim/lua/plugins/formatting.lua
return {
	-- 1. Mason 本身：包管理的基础
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		opts = {}, -- 可以在这里进行 Mason 的 UI 等基础配置
	},

	-- 2. conform.nvim：格式化引擎
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" }, -- 建议在保存文件时才加载
		cmd = { "ConformInfo" },
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				-- 在这里配置你需要的所有格式化工具
				javascript = { "prettierd", "prettier", stop_after_first = true },
				-- ... 其他文件类型配置
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		},
	},

	-- 3. mason-conform.nvim：桥梁，自动安装工具
	{
		"zapling/mason-conform.nvim",
		-- 通过 dependencies 确保它在 conform 和 mason 之后加载
		dependencies = { "williamboman/mason.nvim", "stevearc/conform.nvim" },
		opts = {}, -- 可以留空，或者按需配置
	},
}
