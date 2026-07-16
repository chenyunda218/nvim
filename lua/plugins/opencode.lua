return {
	"nickjvandyke/opencode.nvim",
	version = "*",
	config = function()
		local opencode = require("opencode")
		vim.keymap.set("n", "<leader>osn", function()
			opencode.command("session.new")
		end)
		vim.keymap.set("n", "<leader>oa", function()
			opencode.ask("")
		end)
		vim.keymap.set("n", "<leader>ob", function()
			opencode.ask("@buffer: ")
		end)
		vim.keymap.set("v", "<leader>oa", function()
			opencode.ask("")
		end)
	end,
}
