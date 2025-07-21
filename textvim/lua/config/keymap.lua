local map = vim.keymap.set

-- Code
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })

-- nvimtree
map("n", "<leader>fe", "<cmd> NvimTreeToggle <CR>")
map("n", "<leader>se", "<cmd> ScratchOpen <CR>")
map("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })
map("n", "<leader>ns", function()
	local scratch_api = require("scratch.api")
	scratch_api.createScratchFileByType("markdown", {})
end, { desc = "Scratch Note" })
map("n", "<leader>nn", function()
	vim.cmd("enew")
	vim.cmd("setfiletype markdown")
end, { desc = "Regular Note" })
