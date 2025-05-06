return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        animate = { enabled = true },
        bigfile = { enabled = true },
        rename = { enabled = true },
        win = { enabled = true },
        util = { enabled = true },
        words = { enabled = true },
        layout = { enabled = true },
        quickfile = { enabled = true },
        scope = { enabled = true },
    },
}
