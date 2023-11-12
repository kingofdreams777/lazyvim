return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 100,
  config = function()
    local catppuccin = require("catppuccin")
    catppuccin.setup({
      transparent_background = true,
    })
  end,
}
