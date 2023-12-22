local lsp = require('lsp-zero').preset("recommended")
local lspconfig = require('lspconfig')

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  lsp.default_keymaps({buffer = bufnr})
end)

lspconfig.lua_ls.setup(lsp.nvim_lua_ls())
lspconfig.gopls.setup({})
lspconfig.tsserver.setup({})
lspconfig.pyright.setup({})
lspconfig.tailwindcss.setup({})
lspconfig.texlab.setup({})
lspconfig.rust_analyzer.setup({})
lspconfig.html.setup({})
lspconfig.jdtls.setup({})
lspconfig.dockerls.setup({})
lspconfig.docker_compose_language_service.setup({})

lsp.setup()
