require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "v", "o" }, "<Leader>ta", ":lua require('telescope').extensions.vstask.tasks()<CR>")
map({ "n", "v", "o" }, "<Leader>tl", ":lua require('telescope').extensions.vstask.launch()<CR>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
