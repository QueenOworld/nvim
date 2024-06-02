return {
    'akinsho/bufferline.nvim',
    config = function()
        vim.opt.termguicolors = true
        require("bufferline").setup {
            options = {
                separator_style = 'slope',
                diagnostics = "nvim_lsp",
                diagnostics_indicator = function(count, level)
                    local icon = level:match("error") and " " or ""
                    return " " .. icon .. " " .. count
                end,
                hover = {
                    enabled = true,
                    delay = 200,
                    reveal = { 'close' }
                }
            },
            require("bufferline").setup {
                highlights = require("catppuccin.groups.integrations.bufferline").get()
            }
        }
    end,
    dependencies = 'nvim-tree/nvim-web-devicons'
}
