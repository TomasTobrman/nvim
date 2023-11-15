return {
	'goolord/alpha-nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	event = 'VimEnter',
	config = function()
		local alpha = require('alpha')
		local dashboard = require('alpha.themes.dashboard')

		---- Header ------------------------------------------------------------------------

		dashboard.section.header.val = {
			[[⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢴⣤⣄⠀⠀⠀⠀⠀⢀⣤⣶⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀]],
			[[⢴⣾⣿⣿⣿⣏⣉⣉⣉⣛⣛⣻⣿⣶⣦⣤⣀⠀⠀⠀⠀⠀⠀⠙⢷⠀⠀⠀⢠⡟⠀⠀⠀⠀⠀⠀⢀⣠⣤⣶⣾⣿⣛⣛⣋⣉⣉⣉⣿⣿⣿⣿⣶⠄]],
			[[⠀⠙⢿⣿⣿⣿⡁⠀⠀⣉⡿⠋⠉⠉⠙⠛⠻⢿⣦⣄⠀⠀⠀⠀⠘⣇⠀⢀⡟⠀⠀⠀⠀⢀⣤⣾⠿⠛⠋⠉⠉⠉⠻⣏⡉⠀⠈⣹⣿⣿⣿⠟⠁⠀]],
			[[⠀⠀⠀⠙⣿⣿⣟⠉⠉⣙⡇⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣦⡀⠀⠀⢹⠀⣸⠃⠀⠀⣠⣾⠟⠋⠀⠀⠀⠀⠀⠀⠀⢀⣿⡉⠉⠹⣿⣿⡟⠉⠀⠀⠀]],
			[[⠀⠀⠀⠀⠈⢿⣿⣟⠉⢉⣿⣦⣄⣀⣀⠀⠀⠀⠀⠀⠀⠙⢿⣦⡀⠸⡇⡿⠀⣠⣾⠟⠁⠀⠀⠀⠀⠀⢀⣀⣀⣤⣾⣍⠉⠙⣿⣿⡯⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠸⣿⣿⣿⠉⠀⠀⣀⣨⡟⠛⠛⠒⠒⠤⢄⣀⠀⠙⢿⣆⣷⣧⣾⠟⠁⠀⣀⠤⠄⠒⠚⠛⠛⣯⣀⡀⠀⠉⢹⣿⣿⡿⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⡟⠉⣀⡤⢷⡦⠄⠀⠀⠀⠀⠈⠙⠢⣌⣻⣿⣿⢋⠤⠚⠉⠀⠀⠀⠀⠀⠠⣶⠷⣄⡈⠙⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠸⠿⣿⣿⣿⣁⡤⠾⣷⣤⣴⠶⢶⣒⡻⠿⠿⢛⣿⣿⣿⣟⠛⠽⠿⢓⣲⠶⢶⣦⣴⡟⠦⣄⣹⣿⣿⡿⠟⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠛⣿⣿⣿⢛⣉⠥⠒⠉⠁⠀⣀⠔⢈⠔⣽⣿⣿⡝⢌⠒⢄⡀⠀⠉⠑⠢⢍⣙⢻⣿⣿⡟⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⠋⠀⠀⠀⢀⡤⠊⠀⡴⠋⣼⡟⣿⡟⢿⡄⠳⡄⠈⠢⣀⠀⠀⠀⠈⢻⣷⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣯⢽⣀⠀⣀⣴⡏⠀⢀⡞⠁⣸⡿⠀⠉⠀⠘⣿⡀⠙⣆⠀⠘⣷⣄⡀⢀⡸⢯⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⣿⣿⡶⠋⡿⠋⣽⠷⣶⡟⠀⢰⣿⠃⠀⠀⠀⠀⢹⣧⠀⠘⣷⡖⢿⡍⠻⡏⠳⣶⣿⡟⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣷⡞⠀⢠⡇⢰⡟⠀⠀⣾⡏⠀⠀⠀⠀⠀⠈⣿⡆⠀⠘⣧⠀⣷⠀⠹⣶⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣶⡟⠙⣿⡀⠀⣰⡿⠀⠀⠀⠀⠀⠀⠀⠸⣷⡀⠀⣹⣟⠙⣷⣾⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⢿⣿⣿⣿⡿⠿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⠿⠿⣿⣿⣿⣿⠟⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⠀⠀⠀⠀⠀⠀⠀       ⠀⠀⠀⠀⠀⠀⠀⢸⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
			[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
		}

		---- Buttons -----------------------------------------------------------------------

		dashboard.section.buttons.val = {
			dashboard.button('e', 'New File', ':ene <BAR> startinsert <cr>'),
			dashboard.button('f', 'Find File', '<cmd>Telescope find_files<cr>'),
			dashboard.button('r', 'Recents', '<cmd>Telescope oldfile<cr>'),
			dashboard.button('m', 'Mason', '<cmd>Mason<cr>'),
			dashboard.button('l', 'Lazy', '<cmd>Lazy<cr>'),
			dashboard.button('q', 'Quit', '<cmd>qa<cr>'),
		}

		---- Footer ------------------------------------------------------------------------

		dashboard.section.footer.val = function()
			local total_plugins = #vim.tbl_keys(require('lazy').plugins())
			return 'Loaded ' .. total_plugins .. ' plugins total'
		end

		---- Highlights --------------------------------------------------------------------

		for _, button in ipairs(dashboard.section.buttons.val) do
			button.opts.hl = 'alpha2'
			button.opts.hl_shortcut = 'alpha2'
			button.opts.cursor = 0
			button.opts.width = 28
		end

		dashboard.section.header.opts.hl = 'alpha1'
		dashboard.section.buttons.opts.hl = 'alpha2'
		dashboard.section.footer.opts.hl = 'alpha3'

		------------------------------------------------------------------------------------

		alpha.setup(dashboard.opts)
		vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
	end,
}
