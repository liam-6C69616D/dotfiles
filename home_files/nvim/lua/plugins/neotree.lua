return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons", 
  },
  lazy = false, 
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        follow_current_file = true,
        use_libuv_file_watcher = true, -- Enable file watcher
      },
      git_status = {
        window = {
          position = "float",
        },
      },
      source_selector = {
        winbar = true,
        statusline = false
      }
    })

    vim.keymap.set('n', '<C-n>', ':Neotree filesystem toggle left<CR>') -- CTRL+n shows filesystem 
    vim.keymap.set('n', '<leader>g', ':Neotree git_status toggle left<CR>') -- CTRL+g shows git
  end,
  init = function()
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        require("neo-tree.command").execute({ action = "focus", source = "filesystem", position = "left" })
      end,
    })
  end
}
