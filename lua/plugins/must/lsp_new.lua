local LSP_IMPORTS     = require("plugins.must.lsp_import.lsp-all-import")
-- local LSP_INCC_SERVER = require("autoload_plugins.plugin_setting.my_lsp_addons.lsp-incc-server")
--
local handlers        = {
-- 	["pylsp"] = require("autoload_plugins.plugin_setting.my_lsp_addons.lsp_pylsp").pylsp,
-- 	["jdtls"] = require("autoload_plugins.plugin_setting.my_lsp_addons.lsp_jdtls").jdtls,
-- 	["ltex"] = require("autoload_plugins.plugin_setting.my_lsp_addons.lsp_ltex").ltex,
-- 	["ts_ls"] = require("autoload_plugins.plugin_setting.my_lsp_addons.lsp_ts_ls").ts_ls,
-- 	-- ["ruff-lsp"] = require("autoload_plugins.plugin_setting.my_lsp_addons.ruff_lsp").ruff_lsp,
	function(server_name)
		require("lspconfig")[server_name].setup {
			on_attach = LSP_IMPORTS.ON_ATTACH,
			capabilities = LSP_IMPORTS.capabilities,
		}
	end,
}

-- local LSP_USE_HANDLER = true
local LSP_USE_HANDLER = false
return {
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = {},
				automatic_installation = true,
				handlers = nil
			})
			-- Never use lspconfig and mason-lspconfig handlers together!!!
			if LSP_USE_HANDLER then
				require("mason-lspconfig").setup_handlers(handlers)
			else
				-- require("autoload_plugins.plugin_setting.my_lsp_addons.lsp_pylsp").pylsp()
			end
			--=====================================
			-- Area for setups that are not in Mason
			--=====================================
			-- LSP_INCC_SERVER.setup()
			--=====================================
		end
	}
}
