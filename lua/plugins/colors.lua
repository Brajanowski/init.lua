return {
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

			vim.cmd.colorscheme("tokyonight")
		end
	}
}
