return {
  "saecki/crates.nvim",
  ft = { "rust", "toml" },
  config = function(_, opts)
    local crates = require("crates")
    crates.setup(opts)
    crates.show()
    vim.keymap.set("n", "<leader>rcu", crates.update_all_crates)
    vim.keymap.set("n", "<leader>rod", crates.open_documentation)
  end,
}
