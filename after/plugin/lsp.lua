local lsp = require('lsp-zero').preset({})
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
require('lspconfig').gopls.setup({
	capabilities = lsp_capabilities,
	on_attach = function(client, bufnr)
	lsp_zero.default_keymaps({buffer = bufnr})
  end,
})
require('lspconfig').tsserver.setup({
  capabilities = lsp_capabilities,
  on_attach = function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
  end,
})
require('lspconfig').pyright.setup({
  capabilities = lsp_capabilities,
  on_attach = function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
  end,
})
require('lspconfig').tailwindcss.setup({
  capabilities = lsp_capabilities,
  on_attach = function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
  end,
})
require('lspconfig').texlab.setup({
  capabilities = lsp_capabilities,
  on_attach = function(client, bufnr)
    lsp_zero.default_keymaps({buffer = bufnr})
  end,
})

lsp.setup()
