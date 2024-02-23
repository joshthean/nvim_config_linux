local keymap = vim.keymap

--Directory Navigation
keymap.set("n","<leader>e",":NvimTreeToggle<CR>", { noremap = true, silent = true })
