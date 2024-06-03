return {
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                config = {
                    header = {
                        '',
                        '',
                        '',
                        '',
                        ' __   __     ______     ______     ______     ______     ______  ',
                        '/\\ \"-.\\ \\   /\\  ___\\   /\\  __ \\   /\\  ___\\   /\\  __ \\   /\\__  _\\ ',
                        '\\ \\ \\-.  \\  \\ \\  __\\   \\ \\ \\/\\ \\  \\ \\ \\____  \\ \\  __ \\  \\/_/\\ \\/ ',
                        ' \\ \\_\\\\\"\\_\\  \\ \\_____\\  \\ \\_____\\  \\ \\_____\\  \\ \\_\\ \\_\\    \\ \\_\\ ',
                        '  \\/_/ \\/_/   \\/_____/   \\/_____/   \\/_____/   \\/_/\\/_/     \\/_/ ',
                        '                                                                 ',
                        '',
                        '',
                        '',
                        '',
                    },
                    footer = {},
                    packages = { enable = true },
                    shortcut = {
                        { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
                        {
                            icon_hl = '@variable',
                            desc = '󰱽 Files',
                            group = 'Label',
                            action = 'Telescope find_files',
                            key = 'f',
                        },
                        {
                            desc = ' Mason',
                            group = '@property',
                            action = 'Mason',
                            key = 'a',
                        },
                        {
                            desc = ' Terminal',
                            group = 'Number',
                            action = 'ToggleTerm',
                            key = 'd',
                        },
                    },
                }
            }
        end,
        dependencies = { { 'nvim-tree/nvim-web-devicons', enabled = true }, { 'nvim-telescope/telescope.nvim', enabled = true } }
    }
}
