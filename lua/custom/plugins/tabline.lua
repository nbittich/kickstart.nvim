return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released

    config = function()
      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }
      require("barbar").setup({
        animation = false,
        map('n', '<leader>Bc', '<Cmd>BufferClose<CR>', opts)
      })
    end
  },

}
