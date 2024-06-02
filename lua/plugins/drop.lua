return {
  "folke/drop.nvim",
  event = "VimEnter",
  config = function()
    require("drop").setup{
        theme = "snow",
        max = 15
    }
  end,
}