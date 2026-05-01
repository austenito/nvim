vim.lsp.config("basedpyright", {
  cmd = { "basedpyright-langserver", "--stdio" },
  root_markers = {
    "pyproject.toml",
    "setup.py",
    ".venv",
    ".git",
  },
  filetypes = { "python" },
  settings = {
    python = {
      pythonPath = vim.fn.getcwd() .. "/.venv/bin/python",
    },
    basedpyright = {
      analysis = {
        typeCheckingMode = "basic", -- "off", "basic", "standard", "strict", "all"
        diagnosticMode = "openFilesOnly", -- "openFilesOnly", "workspace"
        useLibraryCodeForTypes = true,
        autoSearchPaths = true,
        autoImportCompletions = true,
      },
    },
  },
})
vim.lsp.enable "basedpyright"

vim.lsp.enable "lua_ls"
vim.lsp.config("lua_ls", {})

vim.lsp.enable "vtsls"
vim.lsp.config("vtsls", {})

vim.keymap.set("n", "gd", "<C-]>", { remap = false, silent = true, desc = "LSP - Go to definition" })

vim.filetype.add {
  extension = {
    mdc = "markdown",
  },
}
