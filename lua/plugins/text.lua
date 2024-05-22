vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "text", "markdown" },
  callback = function()
    vim.opt.textwidth = 80
    vim.opt.wrapmargin = 0
    vim.opt.formatoptions:append("t")
    vim.opt.linebreak = true
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.expandtab = false
  end,
})

return {}
