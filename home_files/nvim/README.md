# Instructions for setup
- Install Neovim
- Write all these files to `~/.config/nvim`
    - This should handle most of the installations on a nvim resart
- Manually install the linters and formatters that are listed in `lua/plugins/none-ls`
    - Run `:Mason`
    - Search for them by name and press `i` to install

# For future language support
- Install an lsp server for the language by adding it to `lua/plugins/lsp-config.lua` inside the mason-lspconfig `ensure_installed` table
- Configure and enable the lsp in `lua/plugins/lsp-config.lua` inside the nvim-lspconfig config function
- Add a linter and formatter if relevant to `lua/plugins/none-ls.lua` by finding the repective BUILTIN from the git repo
- Use `:Mason` to install these manually once added to the file
