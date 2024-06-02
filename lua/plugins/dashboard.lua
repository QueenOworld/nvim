return {
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                config = {
                    footer = {}
                }
            }
        end,
        dependencies = { { 'nvim-tree/nvim-web-devicons', enabled = true }, { 'nvim-telescope/telescope.nvim', enabled = true } }
    }
}
