return {
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      require("go").setup {
        lsp_cfg = false,

        lsp_inlay_hints = {
          enable = false,
        },

        dap_debug = true,
        dap_debug_keymap = true,
      }

      -- gofmt + goimport on save
      local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*.go",
        callback = function() require("go.format").goimport() end,
        group = format_sync_grp,
      })

      local cfg = require("go.lsp").config() -- config() return the go.nvim gopls setup
      vim.lsp.config.gopls = cfg
      vim.lsp.enable "gopls"
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  },
}
