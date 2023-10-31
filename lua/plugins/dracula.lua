return {
  "Mofiqul/dracula.nvim",
  priority = 1000,
  config = function()
    local dracula = require("dracula")
    dracula.setup({
      transparent_bg = true,
      italic_comment = true,
      show_end_of_buffer = false,
      overrides = {},
      colors = {},
    })
  end,
}
