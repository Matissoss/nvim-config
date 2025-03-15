require('mason').setup()

require'lspconfig'.rust_analyzer.setup{}
--require'lspconfig'.lua_ls.setup{}

-- Fix for rust_analyzer error -32802
for _, method in ipairs({ 'textDocument/diagnostic', 'workspace/diagnostic' }) do
    local default_diagnostic_handler = vim.lsp.handlers[method]
    vim.lsp.handlers[method] = function(err, result, context, config)
        if err ~= nil then
		if err == -32802 or err == -32603 then
			return
		end
        end
        return default_diagnostic_handler(err, result, context, config)
    end
end
