-- plugins/telescope.lua:
return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function ()
        require('telescope').setup{}
      end
    }
