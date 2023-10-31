local lldb_extension_path = vim.env.HOME .. "./vscode/extensions/vadimcn.vscode-lldb-1.9.0/"
local codelldb_path = lldb_extension_path .. "adapter/codelldb"
local liblldb_path = lldb_extension_path .. "adapter/libcodelldb.dylib"
return {
  "simrat39/rust-tools.nvim",
  dependencies = "neovim/nvim-lspconfig",
  ft = { "rust" },
  config = function()
    local rt = require("rust-tools")
    rt.setup({
      reload_workspace_from_cargo_toml = true,
      dap = {
        adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
      },
    })
  end,
}
