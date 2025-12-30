return {
  -- Treesitter plugin
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate', -- Automatically update parsers
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
    end
  }
}

