vim.keymap.set('n', '<leader>ra', function()
  local file_name = vim.fn.expand '%:t:r'
  local files
  if vim.fn.has 'win32' == 1 then
    files = { 'build/' .. file_name .. '.exe', file_name .. '.exe', 'a.exe' }
  else
    files = { 'build/' .. file_name .. '.out', file_name .. '.out', 'a.out' }
  end
  local is_find = false
  print(files[1], files[2], files[3])
  for i = 1, #files do
    if vim.fn.filereadable(files[i]) == 1 then
      vim.cmd(':H ' .. files[i])
      is_find = true
      break
    end
  end
  if not is_find then
    -- print '没有找到可执行文件！'
  end
end, { desc = 'Run' })

return {
  {
    'skywind3000/vim-terminal-help',
  },
}
