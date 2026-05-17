# Custom Keybinds
`<leader>` is space
- `gd` Go to definition (cursor must be on word)
- `<leader>ca` Code actions
- `<C-n>` Toggle NeoTree (file and folder view)
- `<leader>g` Toggle Git status in NeoTree
- `<leader>gf` Format the file (uses installed formatter from none-ls) 
- `<leader>ff` Find Files (file search) using Telescope
- `<leader>fg` Fuzzy Grep (file content grep) using Telescope
- `<leader>diff` Open git diff (`:tabc` to close)
- `<leader>xx` Trouble diagnostics
- `<leader>xX` Trouble diagnostics (buffer)
- `<leader>cs` Trouble symbols (show functions, classes, vars in file)
- `<leader>cl` Trouble LSP refs, defs and implementations
- `<leader>xL` Trouble location list
- `<leader>xQ` Trouble quickfix list


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
