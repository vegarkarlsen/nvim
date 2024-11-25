-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "markdown", "text", "tex" },
    callback = function()
        local o = vim.opt_local
        o.spell = true
        o.textwidth = 80
        o.wrapmargin = 0
        o.formatoptions:append("t")
        o.linebreak = true
        o.tabstop = 2
        o.softtabstop = 2
        o.shiftwidth = 2
        return o
    end,
})
