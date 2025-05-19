return {
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	lazy = false,
	config = function()
		local servers = {"lua_ls", "prettier"}

		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = servers
		})

		local lsp = require("lspconfig")

		local function on_attach(_, bufnr)
			local opts = { buffer = bufnr, remap = false }
			vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
			vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
			vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
			vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
			vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
			vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
			vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
			vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
			vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
			vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
			vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
		end

		for _, lsp_server in ipairs(servers) do
			lsp[lsp_server].setup({
				on_attach = on_attach
			})
		end
	end
}

