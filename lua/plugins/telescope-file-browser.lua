return {
    "nvim-telescope/telescope-file-browser.nvim",
    config = function()
        vim.keymap.set("n", "<leader>bw", ":Telescope file_browser<CR>")

        -- open file_browser with the path of the current buffer
        vim.keymap.set("n", "<leader>bw", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")

        -- Alternatively, using lua API
        vim.keymap.set("n", "<leader>bw", function()
            require("telescope").extensions.file_browser.file_browser()
        end)
        local fb_actions = require "telescope".extensions.file_browser.actions
        require("telescope").setup {
            extensions = {
                file_browser = {
                    theme = "ivy",
                    -- disables netrw and use telescope-file-browser in its place
                    hijack_netrw = true,
                },
            },
        }
        -- To get telescope-file-browser loaded and working with telescope,
        -- you need to call load_extension, somewhere after setup function:
        require("telescope").load_extension "file_browser"
    end,
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" }
}
