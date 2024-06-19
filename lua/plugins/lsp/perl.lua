vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "perl" },
  callback = function()
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.expandtab = false
  end,
})

return {}

