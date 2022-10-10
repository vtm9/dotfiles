local general_on_attach = require('lsp.on_attach')

local M = {}

M.servers = {
    'tsserver',
    'ansiblels',
    'bashls',
    'dockerls',
    'elixirls',
    'gopls',
    'grammarly',
    'gradle_ls',
    'graphql',
    'groovyls',
    'hls',
    'jdtls',
    'kotlin_language_server',
    'omnisharp',
    'psalm',
    'pyright',
    'racket_langserver',
    'solargraph',
    'sorbet',
    'sqlls',
    'sumneko_lua',
    'stylelint_lsp',
    'terraformls',
    'vimls',
    'yamlls',
    'html',
    'cssls',
    'eslint',
    'jsonls',
    'solargraph',
  }

M.setup = function()
  require('lsp.settings')()
  require('lsp.servers.nullls').setup()

  for _, serverName in pairs(M.servers) do
    local serverConfig = require('lsp.servers.' .. serverName)(
      general_on_attach)

    serverConfig.flags = { debounce_text_changes = 100, lintDebounce = 200 }
    serverConfig.capabilities = serverConfig.capabilities or require('cmp_nvim_lsp').update_capabilities(
      vim.lsp.protocol
      .make_client_capabilities())
    require('lspconfig')[serverName].setup(serverConfig)
  end

end

return M
