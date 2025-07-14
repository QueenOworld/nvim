return {
    'nvimdev/lspsaga.nvim',
    event = 'LspAttach',
    config = function()
        if (vim.g.colors_name or ""):find("catppuccin") then
            require('lspsaga').setup({
                ui = {
                    kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
                },
            })
        end
        if (vim.g.colors_name or ""):find("neopywal") then
            require("lspsaga").setup({
                ui = {
                    kind = require("neopywal.theme.plugins.lspsaga").get_kinds(),
                },
            })
        end
    end,
    dependencies = {
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons'      -- optional
    }
}
