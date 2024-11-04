-- vim.g.terminal_shell = 'powershell.exe'
-- 定义一个检查文件是否存在的函数
vim.keymap.set('n', '<leader>ra', function()
  print 'OKKKKK\n'
  -- local files
  -- if vim.fn.has 'win32' == 1 then
  --   files = { 'build/%.exe', '%.exe', 'a.exe' }
  -- else
  --   files = { 'build/%.out', '%.out', 'a.out' }
  -- end
  -- local is_find = false
  -- for i = 1, #files do
  --   if vim.fn.filereadable(files[i]) == 1 then
  --     vim.cmd(':H ' .. files[i])
  --     is_find = true
  --     break
  --   end
  -- end
  -- if not is_find then
  --   print '没有找到可执行文件！\n'
  -- end
end, { desc = 'Run' })

return {
  {
    'skywind3000/vim-terminal-help',
  },
}
