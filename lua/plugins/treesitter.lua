return {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
	config = function ()
		require("nvim-treesitter").setup{}
		require("nvim-treesitter.configs").setup{
			ensure_installed = "all",
			highlight = {
				enable = true,
				disable = {},
			},
			autopairs = {
				enable = true,
			},
			indent = {enable = true, disable = {}},
			context_commentstring = {
				enable = true,
				enable_autocmd = false,
			}
		}
		local o = vim.o

		o.expandtab = true --# expand tab input with spaces characters
		o.smartindent = true --# syntax aware indentations for newline inserts
		o.tabstop = 4 --# num of space characters per tab
		o.shiftwidth = 4 --# spaces per indentation level
	end
}