local lsp = require('lsp-zero').preset("recommended")
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

lspconfig.lua_ls.setup(lsp.nvim_lua_ls())
lspconfig.gopls.setup({})
lspconfig.tsserver.setup({})
lspconfig.pyright.setup({})
lspconfig.tailwindcss.setup({})
lspconfig.texlab.setup({})
lspconfig.rust_analyzer.setup({})

lsp.setup()
