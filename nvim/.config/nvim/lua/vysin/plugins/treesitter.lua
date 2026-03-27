return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        event = { 'BufReadPost', 'BufNewFile' },
        opts = {
            ensure_installed = {
                'c', 'cpp', 'python', 'lua', 'bash', 'json', 'html', 'css', 'javascript',
                'typescript', 'vim', 'markdown', 'markdown_inline'
            },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = true
            },
            sync_install = false,
            auto_install = true,
        },
        config = function(_, opts)
            require('nvim-treesitter.configs').setup(opts)
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter-context",
        dependencies = { 'nvim-treesitter/nvim-treesitter' },
        config = function()
            require("treesitter-context").setup({
                enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
                multiwindow = false, -- Enable multiwindow support.
                max_lines = 3, -- How many lines the window should span. Values <= 0 mean no limit.
                min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
                line_numbers = true,
                multiline_threshold = 20, -- Maximum number of lines to show for a single context
                trim_scope = "outer", -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
                mode = "cursor", -- Line used to calculate context. Choices: 'cursor', 'topline'
                -- Separator between context and content. Should be a single character string, like '-'.
                -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
                separator = nil,
                zindex = 20, -- The Z-index of the context window
                on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
            })

            local function set_context_hl()
                vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "#1e1e2e" })
                vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { link = "LineNr" })
            end

            set_context_hl()

            vim.api.nvim_create_autocmd("Colorscheme", {
                callback = set_context_hl,
            })
        end,
    },
}

