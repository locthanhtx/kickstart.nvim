local M = {}

M.cmd = vim.cmd

M.autocmd = function(event, opts)
  vim.api.nvim_create_autocmd(event, opts or {})
end

M.augroup = function(name)
  return vim.api.nvim_create_augroup(name, { clear = true })
end

return M