return {
	'stevearc/conform.nvim',
	event = { 'BufReadPre', 'BufNewFile' },
	config = function()
		local conform = require('conform')
		conform.setup({
			formatters_by_ft = {
				c = { 'clang-format' },
				lua = { 'stylua' },
				-- twig = { 'djlint' },
				html = { 'prettierd' },
				-- css = { 'prettierd' },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			},
		})

		vim.keymap.set({ 'n', 'v' }, '<leader>mp', function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = 'Format' })
	end,
}
