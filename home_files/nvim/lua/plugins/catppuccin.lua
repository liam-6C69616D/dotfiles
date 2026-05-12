return {
"catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup {
      color_overrides = {
        mocha = {
          base = "#1e1e1e",
          mantle = "#161616",
          crust = "#0f0f0f",
        },
      }
    }
    
    vim.cmd.colorscheme "catppuccin-mocha"
  end
}
