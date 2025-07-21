local map = vim.keymap.set

-- Code
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
map("n", "<leader>crn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })
map("n", "<leader>cgr", require("telescope.builtin").lsp_references, { desc = "[G]oto [R]eferences" })
map("n", "<leader>cgi", require("telescope.builtin").lsp_implementations, { desc = "[G]oto [I]mplementation" })
map("n", "<leader>cgd", require("telescope.builtin").lsp_definitions, { desc = "[G]oto [D]efinition" })
-- nvimtree
map("n", "<leader>fe", "<cmd> NvimTreeToggle <CR>")

-- buffers
map("n", "<leader>bd", "<cmd>bd!<cr>", { desc = "Delete Buffer" })
