return {
	"sindrets/diffview.nvim",
	config = function()
		vim.keymap.set("n", "<leader>diff", ":DiffviewOpen<CR>", { silent = true })
	end,
}
