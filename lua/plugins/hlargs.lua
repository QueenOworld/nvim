return {
	"m-demare/hlargs.nvim",
	config = function ()
		require("hlargs").setup{
			paint_arg_declarations = true,
			paint_arg_usages = true,
			extras = {
				named_parameters = true,
			},
			hl_priority = 10000,
		}
	end
}
