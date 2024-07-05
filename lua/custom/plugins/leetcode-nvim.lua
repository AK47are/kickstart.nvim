local args = vim.fn.argv()
if args[1] == 'leetcode.nvim' then
  vim.keymap.set('n', '<leader>lr', ':Leet run', { desc = 'Run code in Leetcode' })
  vim.keymap.set('n', '<leader>ls', ':Leet submit', { desc = 'Submit code in Leetcode' })
  vim.keymap.set('n', '<leader>ld', ':Leet desc', { desc = 'Switch description in Leetcode' })
  vim.keymap.set('n', '<leader>lc', ':Leet console', { desc = 'Open console in Leetcode' })
  vim.keymap.set('n', '<leader>ll', ':Leet list', { desc = 'Opens a problem list picker in Leetcode' })
  vim.keymap.set('n', '<leader>le', ':w | Leet exit', { desc = 'Quit leetcode.nvim' })
end

return {
  {
    'kawre/leetcode.nvim',
    build = ':TSUpdate html',
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'nvim-lua/plenary.nvim', -- required by telescope
      'MunifTanjim/nui.nvim',

      -- optional
      'nvim-treesitter/nvim-treesitter',
      'rcarriga/nvim-notify',
      'nvim-tree/nvim-web-devicons',
    },
    opts = {
      -- configuration goes here
      lang = 'python',
      cn = {
        enabled = true,
        translator = true,
        translate_problems = true,
      },
    },
  },
}
