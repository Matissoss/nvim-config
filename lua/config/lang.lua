require('mason').setup()

require'lspconfig'.rust_analyzer.setup{
	settings = {
		["rust_analyzer"] = {
			checkOnSave = {
				command = "clippy"
			}
		}
	}
}
--require'lspconfig'.lua_ls.setup{}

-- Fix for rust_analyzer error -32802
for _, method in ipairs({ 'textDocument/diagnostic', 'workspace/diagnostic' }) do
    local default_diagnostic_handler = vim.lsp.handlers[method]
    vim.lsp.handlers[method] = function(err, result, context, config)
        if err ~= nil and err.code == -32802 then
            return
        end
        return default_diagnostic_handler(err, result, context, config)
    end
end
