return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            "nvim-lua/plenary.nvim",
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
        },
        config = function()
            local ts = require("telescope.builtin")

            vim.keymap.set("n", "<leader>sf", ts.find_files, {})
            vim.keymap.set("n", "<leader>sd", ts.diagnostics, {})
            vim.keymap.set("n", "<leader>sk", ts.keymaps, {})
            vim.keymap.set("n", "<leader>sg", ts.live_grep, {})
            vim.keymap.set("n", "<leader><leader>", ts.buffers, {})
        end
    }
}
