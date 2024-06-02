return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                notify = true,
                mini = {
                    enabled = true,
                    indentscope_color = "",
                },
                mason = true,
                noice = true,
                neotree = true,
                telescope = {
                    enabled = true,
                    -- style = "nvchad"
                },
                lsp_trouble = true,
                rainbow_delimiters = true,
            },
            color_overrides = {}
        })
    end
}
