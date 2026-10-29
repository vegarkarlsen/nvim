-- TODO: add venv-selector ( looks like it is removed from lazyExtras)

return {
    {
        "linux-cultist/venv-selector.nvim",
        opts = {
            search = {
                cross_platform = {
                    command = "$FD '/(bin/python([0-9.]+)?|Scripts/python.exe)$' $CWD --full-path --color never -HI -a",
                },
            },
        },
    }
}
