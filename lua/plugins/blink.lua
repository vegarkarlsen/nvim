-- The blink.cmp module handles autosuggestions and snippets etc.
--
-- TODO: Fix supertab for vscode
-- Need to fix ai_accept ref https://www.lazyvim.org/extras/coding/blink,
-- if we are going to use these modules

return {
    {
        "saghen/blink.cmp",
        opts = {
            completion = {
                accept = {
                    auto_brackets = {
                        enabled = false
                    },
                },
            },
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
                ["<C-l>"] = {
                    "snippet_forward",
                    "fallback",
                },
                ["<C-h>"] = {
                    "snippet_backward",
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
    },
}
