return {
  "stevearc/conform.nvim",
  opts = {},
  config = function()
    require("conform").setup {
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
        markdown = { "markdownprettier" },
      },
      formatters = {
        markdownprettier = {
          command = "prettier",
          args = { "--stdin-filepath", "$FILENAME", "--print-width", "120", "--prose-wrap", "always" },
        },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    }
  end,
}
