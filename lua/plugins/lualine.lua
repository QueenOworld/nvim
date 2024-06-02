return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup {
            options = {
                theme = "catppuccin"
            },
            extensions = { "quickfix", "trouble", "neo-tree", "fzf", "lazy", "mason" }
        }
    end
}
