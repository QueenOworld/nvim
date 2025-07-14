return {
    'akinsho/bufferline.nvim',
    after = { "catppuccin", "neopywal" },
    config = function()
        vim.opt.termguicolors = true
        if (vim.g.colors_name or ""):find("catppuccin") then
            require("bufferline").setup {
                highlights = require("catppuccin.groups.integrations.bufferline").get(),
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
            }
        end
        if (vim.g.colors_name or ""):find("neopywal") then
            require("bufferline").setup {
                highlights = require("neopywal.theme.plugins.bufferline").setup(),
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
            }
        end
    end,
    dependencies = 'nvim-tree/nvim-web-devicons'
}
