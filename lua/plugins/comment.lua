return -- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
{
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup {
            opleader = {
                ---Line-comment keymap
                line = 'gc',
                ---Block-comment keymap
                block = 'gb',
            },
            post_hook = function(ctx)
                local r = unpack(vim.api.nvim_win_get_cursor(0))
                local rcnt = vim.api.nvim_buf_line_count(0)
                if rcnt > r then
                    vim.api.nvim_win_set_cursor(0, { r + 1, 0 })
                end
            end,
        }
    end,
}
