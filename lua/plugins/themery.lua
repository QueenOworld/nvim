return {
    'zaldih/themery.nvim',
    config = function()
        require("themery").setup({
            themes =
            {
                {
                    name = "meow",
                    colorscheme = "catppuccin",
                },
                'blue', 'catppuccin-frappe', 'catppuccin-latte', 'catppuccin-macchiato', 'catppuccin-mocha', 'darkblue',
                'darker', 'darksolar', 'deepocean', 'default', 'delek', 'desert', 'dracula', 'dracula_blood',
                'earlysummer', 'earlysummer_lighter', 'elflord', 'emerald', 'evening', 'habamax', 'industry', 'koehler',
                'limestone', 'lunaperche', 'mariana', 'mariana_lighter', 'middlenight_blue', 'monokai', 'monokai_lighter',
                'moonlight', 'morning', 'murphy', 'oceanic', 'pablo', 'palenight', 'peachpuff', 'quiet', 'ron', 'shine',
                'slate', 'starry', 'torte', 'ukraine', 'zellner'
            },
            livePreview = true,
        })
        vim.cmd("colorscheme catppuccin-mocha")
    end
}
