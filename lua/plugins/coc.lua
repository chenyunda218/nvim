return {
	"neoclide/coc.nvim",
	branch = "master",
	build = "yarn install --frozen-lockfile",
	config = function()
		vim.opt.backup = false
		vim.opt.writebackup = false

		-- Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
		-- delays and poor user experience
		vim.opt.updatetime = 300
	end,
}
