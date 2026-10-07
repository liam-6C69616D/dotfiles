local parsers = {
  "lua",
  "javascript",
  "python",
  "c",
  "bash",
  "typescript",
  "ruby",
  "markdown",
  "markdown_inline",
}

return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  pin = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup()

    require("nvim-treesitter").install(parsers)

    vim.api.nvim_create_autocmd("FileType", {
      pattern = parsers,
      callback = function(ev)
        vim.treesitter.start(ev.buf)
      end,
    })
  end,
}
