return {
    "RedsXDD/neopywal.nvim",
    name = "neopywal",
    lazy = false,
    priority = 1000,
    config = function()
        require("neopywal").setup({
            custom_colors = {},
            custom_highlights = {},
            plugins = {
                nvim_cmp = true,
                dashboard = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                fzf = true,
                notify = true,
                mini = {
                    map = true
                },
                mason = true,
                noice = true,
                neotree = true,
                telescope = {
                    enabled = true,
                    -- style = "nvchad"
                },
                trouble = true,
                lspsaga = {
                    enabled = false,
                    dim_folder = true,    -- Whether to dim the folder name on the winbar.
                    dim_filename = true,  -- Whether to dim the filename on the winbar.
                    dim_separator = true, -- Whether to dim the separator character on the winbar.
                    winbar_style = { "bold" },
                },
                rainbow = true,
                dap_ui = true,
                snacks = {
                    enabled = false,
                    indent_scope_color = "rosewater", -- catppuccin color (eg. `lavender`) Default: text
                }
            },
        })
    end
}
