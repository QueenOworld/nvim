return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            integrations = {
                cmp = true,
                dashboard = true,
                gitsigns = true,
                fidget = true,
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
                lsp_saga = true,
                rainbow_delimiters = true,
                dap_ui = true,
                snacks = {
                    enabled = false,
                    indent_scope_color = "rosewater", -- catppuccin color (eg. `lavender`) Default: text
                }
            },
            color_overrides = {
                macchiato = {
                    base = "#291e2e",
                    crust = "#18111b",
                    mantle = "#211825",
                    surface0 = "#3e3144",
                    surface1 = "#52455a",
                    surface2 = "#665870",
                    overlay0 = "#7b6c86",
                    overlay1 = "#8f7f9c",
                    overlay2 = "#a393b2",
                    subtext0 = "#b7a6c8",
                    subtext1 = "#ccbade",
                    text = "#e0cdf4"
                },
                mocha = {
                    base = "#0d0909",
                    crust = "#1b1111",
                    mantle = "#251818",
                    surface0 = "#443131",
                    surface1 = "#5a4545",
                    surface2 = "#705858",
                    overlay0 = "#866c6c",
                    overlay1 = "#9c7f7f",
                    overlay2 = "#b29393",
                    subtext0 = "#c8a6a6",
                    subtext1 = "#debaba",
                    text = "#f4cdcd"
                },
            }
        })
    end
}
