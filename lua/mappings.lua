require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- LazyGit
map("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

-- MarkdownPreview
map("n", "<leader>md", "<cmd>MarkdownPreview<cr>", { desc = "MarkdownPreview" })

-- Template
map("n", "<leader>cp", "<cmd>Template T-cpp<cr>", { desc = "Template For C++" })
