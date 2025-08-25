return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        local toggleterm = require("toggleterm")

        toggleterm.setup({})

        vim.keymap.set("n", "<C-\\>", "<cmd>ToggleTerm direction=float<cr>", { noremap = true, silent = true })
        vim.keymap.set("t", "<C-\\>", [[<C-\><C-n><cmd>ToggleTerm direction=float<cr>]], { noremap = true, silent = true })
    end
}
