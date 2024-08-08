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
    statusline = {
        theme = "minimal",
        separator_style = "round",
    },

    nvdash = {
        load_on_startup = true,
    },
}
M.term = {
    float = {
        row = 0.05, -- Hơi giảm vị trí hàng từ trên xuống
        col = 0.1, -- Hơi giảm vị trí cột từ trái qua
        width = 0.8, -- Tăng chiều rộng lên 80%
        height = 0.8, -- Tăng chiều cao lên 60%
    },
}
return M
