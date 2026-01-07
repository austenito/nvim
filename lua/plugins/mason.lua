return {
  {
    "mason-org/mason.nvim",
    event = { "BufRead", "BufNewFile" },
    lazy = false,
    dependencies = {
      "mason-org/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
    config = function()
      require("mason").setup {}

      require("mason-tool-installer").setup {
        ensure_installed = {
          -- install language servers
          "basedpyright",
          "gopls",
          "lua-language-server",
          "marksman",
          "vtsls",

          -- install formatters
          "stylua",
          "prettierd",
          "prettier",

          -- other packages
          "tree-sitter-cli",
        },
      }
    end,
  },
}
