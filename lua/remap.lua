vim.keymap.set("n", "<leader>fs", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>ra", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("v", "<leader>sc", '"+y')

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<leader>t", function()
  vim.cmd("botright split")
  vim.cmd("terminal")
  vim.cmd("startinsert")
end, { noremap = true, silent = true })

vim.keymap.set("t", "<C-d>", "<C-\\><C-n>:q<CR>", { noremap = true, silent = true })

vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
