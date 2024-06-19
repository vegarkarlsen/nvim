return {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
        ---@type lspconfig.options
        servers = {
            -- pyright will be automatically installed with mason and loaded with lspconfig
            matlab_ls = {
                filetypes = {"matlab" },
                settings = {
                    MATLAB = {
                        indexWorkspace = true,
                        installPath = "/home/hurodor/.local/MATLAB/R2023b/", -- might need to change this
                        matlabConnectionTiming = "onStart",
                        telemetry = true,
                    },
                },
                single_file_support = true,

            }
        },
    },
}

-- return {}
