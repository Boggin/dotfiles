return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
		require("gruvbox").setup({
			options = {
				contrast = "soft",
				transparent_mode = true,
			},
		})

		vim.cmd("colorscheme gruvbox")

	end,
}
