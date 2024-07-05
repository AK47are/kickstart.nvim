vim.g.terminal_shell = 'powershell.exe'
-- 定义一个检查文件是否存在的函数
vim.keymap.set('n', '<leader>rc', function()
  if vim.fn.filereadable 'main.cpp' == 1 then
    vim.cmd 'H clang main.cpp'
  else
    print 'main.cpp 不存在于当前文件夹中'
  end
end, { desc = 'Only compile main.cpp' })

vim.keymap.set('n', '<leader>ra', function()
  if vim.fn.filereadable 'a.exe' == 1 then
    vim.cmd 'H ./a.exe'
  else
    print 'a.exe 不存在于当前文件夹中'
  end
end, { desc = 'Run a.exe' })

return {
  {
    'skywind3000/vim-terminal-help',
  },
}
