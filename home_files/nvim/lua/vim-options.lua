vim.cmd("set splitbelow") -- Split new horizontal tabs below
vim.cmd("set splitright") -- Split new veritcal tabs right
vim.cmd("set expandtab") -- Converts pressed tabs to spaces
vim.cmd("set tabstop=2") -- How many spaces a tab shows as
vim.cmd("set softtabstop=2") -- Press tab=add 2 spaces, Press backspace=delete 2 spaces
vim.cmd("set shiftwidth=2") -- Indentation for auto indent (using >> or << or code auto indent)
vim.cmd("set clipboard=unnamedplus") -- Copy yanked to system clipboard
vim.keymap.set("i", "<S-Tab>", "<C-d>", { noremap = true }) -- Set shift+tab to unindent
vim.cmd("set number")

-- Disable arrow keys in normal mode
vim.keymap.set("n", "<Up>", "<Nop>")
vim.keymap.set("n", "<Down>", "<Nop>")
vim.keymap.set("n", "<Left>", "<Nop>")
vim.keymap.set("n", "<Right>", "<Nop>")

-- Disable arrow keys in visual mode
vim.keymap.set("v", "<Up>", "<Nop>")
vim.keymap.set("v", "<Down>", "<Nop>")
vim.keymap.set("v", "<Left>", "<Nop>")
vim.keymap.set("v", "<Right>", "<Nop>")
