return {
    'HiPhish/rainbow-delimiters.nvim',
    submodules = false,
    config = function()
        require('rainbow-delimiters.setup').setup {}
    end
}
