require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>md", "<cmd>MarkdownPreview<cr>", { desc = "MarkdownPreview" })

map("v", "<C-c>", '"+y', { noremap = true, silent = true })

map("n", "<leader>cp", "<cmd>Template T-cpp<cr>", { desc = "Template for C++" })
