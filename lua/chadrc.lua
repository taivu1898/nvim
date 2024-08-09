-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
    theme = "falcon",

    -- hl_override = {
    -- 	Comment = { italic = true },
    -- 	["@comment"] = { italic = true },
    -- },
    cmp = {
        icons = true,
        lspkind_text = true,
        style = "atom",
    },

    statusline = {
        theme = "minimal",
        separator_style = "round",
    },

    nvdash = {
        load_on_startup = true,
        header = {
            "  ▄▄         ▄ ▄▄▄▄▄▄▄",
            "▄▀███▄     ▄██ █████▀ ",
            "██▄▀███▄   ███        ",
            "███  ▀███▄ ███        ",
            "███    ▀██ ███        ",
            "███      ▀ ███        ",
            "▀██ █████▄▀█▀▄██████▄ ",
            "  ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀",
        },
        buttons = {
            { "  Find File", "Spc f f", "Telescope find_files" },
            { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
            { "  Bookmarks", "Spc m a", "Telescope marks" },
            { "  Themes", "Spc t h", "Telescope themes" },
            { "  Mappings", "Spc c h", "NvCheatsheet" },
        },
    },

    telescope = {
        style = "bordered",
    },
}

M.term = {
    float = {
        relative = "editor",
        row = 0.05,
        col = 0.08,
        width = 0.8,
        height = 0.8,
        border = "single",
    },
}

return M
