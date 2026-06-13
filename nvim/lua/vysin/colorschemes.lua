local M = {}

M.items = {
    {
        repo = "oskarnurm/koda.nvim",
        schemes = { "koda", "koda-moss", "koda-dark" },
        config = function()
            require("koda").setup({ transparent = true })
            vim.cmd("colorscheme koda-moss")
        end,
    },
    {
        repo = "bluz71/vim-moonfly-colors",
        schemes = { "moonfly" },
        config = function()
            vim.g.moonflyTransparent = true
            vim.g.moonflyCursorColor = true
            vim.g.moonflyItalics = false

            vim.cmd("colorscheme moonfly")

            vim.cmd([[
            highlight Normal        ctermbg=NONE guibg=NONE
            highlight NormalNC      ctermbg=NONE guibg=NONE
            highlight NormalFloat   ctermbg=NONE guibg=NONE
            highlight FloatBorder   ctermbg=NONE guibg=NONE
            highlight Pmenu         ctermbg=NONE guibg=NONE
            highlight SignColumn    ctermbg=NONE guibg=NONE
            highlight VertSplit     ctermbg=NONE guibg=NONE
            highlight LineNr        ctermbg=NONE guibg=NONE
            highlight CursorLineNr  ctermbg=NONE guibg=NONE
            ]])
        end,
    },
    {
        repo = "rose-pine/neovim",
        name = "rose-pine",
        schemes = { "rose-pine", "rose-pine-main" },
        config = function()
            require("rose-pine").setup({
                disable_background = true,
                disable_float_background = true,
            })
            vim.cmd("colorscheme rose-pine")
        end,
    },
    {
        repo = "EdenEast/nightfox.nvim",
        schemes = { "carbonfox" },
        config = function()
            require("nightfox").setup({
                options = {
                    transparent = true,
                },
            })
            vim.cmd("colorscheme carbonfox")
        end,
    },
    {
        repo = "projekt0n/github-nvim-theme",
        schemes = {
            "github_dark_default",
            "github_dark_high_contrast",
        },
    },
    {
        repo = "RRethy/base16-nvim",
        schemes = { "base16-default-dark" },
    },
}

function M.names()
    local names = {}

    for _, item in ipairs(M.items) do
        vim.list_extend(names, item.schemes)
    end

    return names
end

return M
