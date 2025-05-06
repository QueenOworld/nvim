return {
    'nvimdev/lspsaga.nvim',
    event = 'LspAttach',
    config = function()
        require('lspsaga').setup({
            ui = {
                kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
            },
        })
    end,
    dependencies = {
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons'      -- optional
    }
}
