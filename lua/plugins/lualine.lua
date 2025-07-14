return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local has_lualine, lualine = pcall(require, "lualine")
        if not has_lualine then
            return
        end

        local has_neopywal, neopywal_lualine = pcall(require, "neopywal.theme.plugins.lualine")
        if not has_neopywal then
            return
        end
        if (vim.g.colors_name or ""):find("catppuccin") then
            require('lualine').setup {
                options = {
                    theme = "catppuccin"
                },
                extensions = { "quickfix", "trouble", "neo-tree", "fzf", "lazy", "mason" }
            }
        end
        if (vim.g.colors_name or ""):find("neopywal") then
            require('lualine').setup {
                options = {
                    theme = "neopywal"
                },
                extensions = { "quickfix", "trouble", "neo-tree", "fzf", "lazy", "mason" }
            }
        end
    end
}
