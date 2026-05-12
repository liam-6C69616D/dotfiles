return {
	{
		"mason-org/mason.nvim",
		opts = {},
		config = function()
			require("mason").setup()
		end,
	},

	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"pylsp",
					"ruby_lsp",
					"clangd",
					"ts_ls",
					"html",
					"cssls",
					"rust_analyzer",
					"bashls",
				},
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities() -- Enables autocompletions powered by the LSPs (see completions.lua)

			-- Enable diagnostics with virtual text
			vim.diagnostic.config({
				virtual_text = true,
				float = { border = "rounded" },
			})

			vim.lsp.config("lua_ls", { capabilities = capabilities })
			vim.lsp.config("pylsp", {
				capabilities = capabilities,
				settings = {
					pylsp = {
						plugins = {
							pycodestyle = {
								ignore = { "E501" },
							},
						},
					},
				},
			})
			vim.lsp.config("ruby_lsp", { capabilities = capabilities })
			vim.lsp.config("clangd", { capabilities = capabilities })
			vim.lsp.config("ts_ls", { capabilities = capabilities })
			vim.lsp.config("html", { capabilities = capabilities })
			vim.lsp.config("cssls", { capabilities = capabilities })
			vim.lsp.config("rust_analyzer", { capabilities = capabilities })
			vim.lsp.config("bashls", { capabilities = capabilities })

			vim.lsp.enable("lua_ls")
			vim.lsp.enable("pylsp")
			vim.lsp.enable("ruby_lsp")
			vim.lsp.enable("clangd")
			vim.lsp.enable("ts_ls")
			vim.lsp.enable("html")
			vim.lsp.enable("cssls")
			vim.lsp.enable("rust_analyzer")
			vim.lsp.enable("bashls")

			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			---- Enable hover on mouse move for definition
			--vim.api.nvim_create_autocmd("CursorMoved", {
			--  callback = function()
			--    vim.lsp.buf.hover({focusable = false})
			--  end,
			--})
			--
			---- OR FOR A SLIGHT DELAY FIRST
			-- local hover_timer = nil
			-- vim.api.nvim_create_autocmd("CursorMoved", {
			--   callback = function()
			--     if hover_timer then vim.fn.timer_stop(hover_timer) end
			--     hover_timer = vim.fn.timer_start(500, function()
			--       vim.lsp.buf.hover({focusable = false})
			--     end)
			--   end,
			-- })
		end,
	},
}
