return {
	'echasnovski/mini.icons',
	version = '*',
	config = function()
		require("mini.icons").setup({
		    -- Configuration here, or leave empty to use defaults
		})
	end,
	init = function()
		package.preload["nvim-web-devicons"] = function()
		  require("mini-icons").mock_nvim_web_devicons()
		  return package.loaded["nvim-web-devicons"]
		end
	end,
}
