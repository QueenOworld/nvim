return {
    'kevinhwang91/nvim-bqf',
    ft = 'qf',
    dependencies = {'junegunn/fzf'},
    config = function()
        vim.fn['fzf#install']()
        require('nvim-bqf').setup{
            auto_enable = {
                description = [[Enable nvim-bqf in quickfix window automatically]],
                default = true
            },
        }
    end
}