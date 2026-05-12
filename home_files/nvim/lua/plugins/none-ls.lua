return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua, -- Lua formatter
        null_ls.builtins.formatting.prettier, -- JS formatter
        null_ls.builtins.formatting.rubocop, -- Ruby formatter

        null_ls.builtins.diagnostics.eslint_d, -- JS linter
        null_ls.builtins.diagnostics.rubocop, -- Ruby linter
        null_ls.builtins.diagnostics.checkmake, -- Make linter
        null_ls.builtins.diagnostics.codespell, -- Spell checker
        null_ls.builtins.diagnostics.cpplint, -- C/C++ static checker
        null_ls.builtins.diagnostics.dotenv_linter, -- .env linter
        null_ls.builtins.diagnostics.markdownlint, -- MD linter
        null_ls.builtins.diagnostics.pylint, -- Python Linter
        null_ls.builtins.diagnostics.sqruff, -- SQL linter        
        null_ls.builtins.diagnostics.markuplint, -- HTML linter        
        null_ls.builtins.diagnostics.stylelint, -- CSS linter        

      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
