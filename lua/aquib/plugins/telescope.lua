return {
	"nvim-lua/plenary.nvim",

	"nvim-telescope/telescope.nvim", tag = '0.1.8', -- or                            , branch = '0.1.x',
	opts = function(_)
		return {
			cwd = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
		}
	end,
	--
	requires = { {'nvim-lua/plenary.nvim'} }
}

