vim.o.number = true
vim.o.relativenumber = true
vim.o.terminalcolors = true
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.swapfile = false
vim.o.signcolumn = "yes"
vim.g.mapleader = " "
vim.o.winborder = "rounded"
vim.o.clipboard = "unnamedplus"

vim.keybind.set('n', '<leader>o', ':update<CR> :source <CR>')
vim.keybind.set('n', '<leader>w', ':write<CR>')
vim.keybind.set('n', '<leader>p', ':quit<CR>')

vim.keybind.set({ 'n', 'v', 'x' }, '<leader>y', '"+y<CR>')
vim.keybind.set({ 'n', 'v', 'x' }, '<leader>d', '"+d<CR>')

vim.keybind.set('n', '<leader>lf', vim.lsp.buf.format)

vim.pack.add({
    { src = "https://github.com/vague2k/vague.nvim" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
    { src = "https://github.com/stevearc/oil.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig.nvim" },
})

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method('textDocument/completion') then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
		end
	end,
})
vim.cmd("set completeopt+=noselect")

require "oil".setup()
vim.keybind.set('n', '<leader>e', ":Oil<CR>")

vim.lsp.enable({"lua_ls"})

require "vague".setup ({transparent = true})
vim.cmd("colorscheme vague")
vim.cmd(":hi statusline guibg=NONE")
