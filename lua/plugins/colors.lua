return {
    {
        "Mofiqul/adwaita.nvim",
        lazy = false,
        priority = 1000,
		config = function()
			vim.g.adwaita_darker = true
			vim.g.adwaita_disable_cursorline = true
			vim.g.adwaita_transparent = false
			vim.cmd.colorscheme("adwaita")
    	end
    },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		opts = {},
		config = function()
			require("tokyonight").setup({
				style = "night",
				terminal_colors = true,
				styles = {
					comments = { italic = false },
					keywords = { italic = false },
					sidebards = "dark",
					floats = "dark",
				},
				on_colors = function(colors)
					colors.bg = "#000000"
				end
			})

			-- vim.cmd.colorscheme("tokyonight")
		end
	}
}
