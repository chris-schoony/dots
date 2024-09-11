return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    build = "make tiktoken",
    config = function()
      require('CopilotChat').setup {
        vim.api.nvim_set_keymap('n', '<leader>cpt', ':CopilotChatToggle<CR>', { noremap = true, silent = true }),
        vim.api.nvim_set_keymap('n', '<leader>cpr', ':CopilotChatReset<CR>', { noremap = true, silent = true }),
        vim.api.nvim_set_keymap('v', '<leader>cpe', ':CopilotChatExplain<CR>', { noremap = true, silent = true })
      }
    end
  },
}
