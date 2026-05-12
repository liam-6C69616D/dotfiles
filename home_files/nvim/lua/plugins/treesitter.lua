return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'master',
  build = ":TSUpdate",
  config = function()
    local config = require('nvim-treesitter.configs')
    config.setup({
      auto_install = true,
      ensure_installed = {"lua", "javascript", "python", "c", "bash", "typescript", "ruby"},
      highlight = {enable = true},
      indent = {enable = true},
    })
  end
}
