vim.lsp.enable "basedpyright"
vim.lsp.config("basedpyright", {
  settings = {
    basedpyright = {
      analysis = {
        typeCheckingMode = "basic", -- "off", "basic", "standard", "strict", "all"
        diagnosticMode = "openFilesOnly", -- "openFilesOnly", "workspace"
        useLibraryCodeForTypes = true,
        autoSearchPaths = true,
        autoImportCompletions = true,
      },
      python = {
        pythonPath = vim.fn.getcwd() .. "/.venv/bin/python",
        venvPath = ".",
        venv = ".venv",
      },
    },
  },
})

vim.lsp.enable "lua_ls"
vim.lsp.config("lua_ls", {})

vim.lsp.enable "vtsls"
vim.lsp.config("vtsls", {})

vim.keymap.set("n", "gd", "<C-]>", { remap = false, silent = true, desc = "LSP - Go to definition" })
