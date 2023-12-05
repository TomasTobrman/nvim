return {
	'williamboman/mason.nvim',
	event = { 'BufReadPre', 'BufNewFile' },
	dependencies = {
		'williamboman/mason-lspconfig.nvim',
		'WhoIsSethDaniel/mason-tool-installer.nvim',
		'jay-babu/mason-nvim-dap.nvim',
	},
	build = ':MasonUpdate',
	config = function()
		local mason = require('mason')
		local mason_lspconfig = require('mason-lspconfig')
		local mason_tool_installer = require('mason-tool-installer')
		local mason_nvim_dap = require('mason-nvim-dap')

		mason.setup({})

		mason_lspconfig.setup({
			ensure_installed = {
				'lua_ls',
				'clangd',
			},
			automatic_installation = true,
		})

		mason_tool_installer.setup({
			ensuper_installed = {
				'stylua',
				'clang-format',
				'cpplint',
			},
		})

		mason_nvim_dap.setup({
			ensure_installed = {
				'codelldb',
				'java-debug-adapter',
			},
			handlers = {},
		})
	end,
}
