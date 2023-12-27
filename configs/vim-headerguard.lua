-- function vim.g.HeaderguardName()
--   return vim.g.toupper(vim.g.expand "%:t:t:gs/[^0-9a-zA-Z_]/_/g")
-- end
vim.cmd [[
  function! g:HeaderguardName()
      return toupper(join(['backend',substitute(expand('%:gs/^.*src//g'),'[^0-9a-zA-Z_]','_','g')],''))
  endfunction
]]
