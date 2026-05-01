return {
  {
    "iamcco/markdown-preview.nvim",
    lazy = false,
    config = function() vim.fn["mkdp#util#install"]() end,
    init = function() vim.g.mkdp_filetypes = { "markdown", "mdc" } end,
    ft = { "markdown" },
  },
}
