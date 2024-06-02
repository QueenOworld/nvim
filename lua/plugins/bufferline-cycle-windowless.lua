return {
    "roobert/bufferline-cycle-windowless.nvim",
    dependencies = {
        { "akinsho/bufferline.nvim" },
    },
    config = function()
        require("bufferline-cycle-windowless").setup({
            -- whether to start in enabled or disabled mode
            default_enabled = true,
        })

        vim.api.nvim_set_keymap("n", "<S-l>", "<CMD>BufferLineCycleWindowlessNext<CR>",
            { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "<S-h>", "<CMD>BufferLineCycleWindowlessPrev<CR>",
            { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "<S-t>", "<CMD>BufferLineCycleWindowlessToggle<CR>",
            { noremap = true, silent = true })
    end,
}

