local map = vim.keymap.set

-- Code
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })

-- nvimtree
map("n", "<leader>fe", "<cmd> NvimTreeToggle <CR>")
map("n", "<leader>se", "<cmd> ScratchOpen <CR>")
map("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })
