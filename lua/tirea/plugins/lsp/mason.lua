return {
	'williamboman/mason.nvim',
	lazy = false,
	dependencies = {
		'williamboman/mason-lspconfig.nvim',
		'WhoIsSethDaniel/mason-tool-installer.nvim',
	},
	build = ':MasonUpdate',
	config = function()
		local mason = require('mason')
		local mason_lspconfig = require('mason-lspconfig')
		local mason_tool_installer = require('mason-tool-installer')

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
	end,
}
