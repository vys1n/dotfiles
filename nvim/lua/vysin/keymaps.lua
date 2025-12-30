
vim.g.mapleader = " "

vim.keymap.set("i", "jj", "<Esc>", { noremap = true })

vim.keymap.set("n", "<S-Z>", ":w<CR>", { noremap = true })
vim.keymap.set("n", "<S-X>", ":wq<CR>", { noremap = true })
vim.keymap.set("n", "<S-C>", ":q<CR>", { noremap = true })

vim.keymap.set("n", "<A-v>", "<C-v>", { noremap = true})

vim.keymap.set("i", "(", "()<Left>", { noremap = true })
vim.keymap.set("i", "[", "[]<Left>", { noremap = true })
vim.keymap.set("i", "{", "{}<Left>", { noremap = true })

vim.keymap.set("i", "{<CR>", "{<CR>}", { noremap = true })

vim.keymap.set("i", "{{", "{", { noremap = true })
vim.keymap.set("i", "{}", "{}", { noremap = true })
vim.keymap.set("i", "'", "''<Left>", { noremap = true })
vim.keymap.set("i", "\"", "\"\"<Left>", { noremap = true })

vim.keymap.set('i', '{', '{<CR>}<Esc>O', { desc = 'Auto-format braces with indentation' })

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "U", "<C-r>", { noremap = true, desc = "Redo" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww ~/scripts/tmux-sessionizer<CR>")
--vim.keymap.set("n", "<C-f>", "<cmd>silent !alacritty -e ~/scripts/tmux-sessionizer.sh<CR>")
-- vim.keymap.set("n", "<leader>f", function()
--     require("conform").format({ bufnr = 0 })
-- end)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>re", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { noremap = true, silent = true })

-- telescope
vim.keymap.set("n", "<leader>fs", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fp", ":Telescope git_files<cr>")
vim.keymap.set("n", "<leader>fz", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")
