-- The blink.cmp module handles autosuggestions and snippets etc.
--
-- TODO: Fix supertab for vscode

return {
    {
        "saghen/blink.cmp",
        opts = {
            keymap = {
                ["<Tab>"] = {
                    function(cmp)
                        if cmp.snippet_active() then
                            return cmp.snippet_forward()
                        else
                            return cmp.select_next()
                        end
                    end,
                    "fallback",
                },
                ["<S-Tab>"] = {
                    function(cmp)
                        if cmp.snippet_active() then
                            return cmp.snippet_backward()
                        else
                            return cmp.select_prev()
                        end
                    end,
                    "fallback",
                },
            },
        },
    },
    {
        "saghen/blink.compat",
        optional = true,
        opts = {},
        version = not vim.g.lazyvim_blink_main and "*",
    }
}
