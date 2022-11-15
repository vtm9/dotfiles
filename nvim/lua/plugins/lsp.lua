local M = {}

function M.run(use)
  servers = {
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
    'jdtls',
    'kotlin_language_server',
    'omnisharp',
    'pyright',
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
    'sumneko_lua',
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      'neovim/nvim-lspconfig',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      {
        'folke/trouble.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = require('plugins.trouble-nvim')
      },

      -- Autocompletion
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/cmp-nvim-lsp-signature-help',

      -- Snippets
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
    },
    config = function()
      local lsp = require('lsp-zero')
      lsp.preset('recommended')

      lsp.ensure_installed(servers)

      lsp.on_attach(function(client, bufnr)
        local opts = { buffer = bufnr, remap = false }

        local bind = vim.keymap.set

        bind("n", "<leader>l", vim.lsp.buf.format, opts)
        bind('n', '<space>rn', vim.lsp.buf.rename, opts)
        bind('n', '<leader>ca', vim.lsp.buf.code_action, opts)
        bind('n', 'gd', vim.lsp.buf.definition, opts)
        bind('n', 'K', vim.lsp.buf.hover, opts)
      end)


      -- define line number hl for lines with Lsp errors
      vim.cmd [[sign define DiagnosticSignWarn text= texthl= numhl=DiagnosticSignWarn linehl=]]
      vim.cmd [[sign define DiagnosticSignError text= texthl= numhl=DiagnosticSignError linehl=]]

      -- set global diagnostic config
      vim.diagnostic.config({
        signs = true,
        underline = true,
        virtual_text = { prefix = '<' },
        float = { scope = 'line', border = 'rounded', focusable = false },
        severity_sort = true
      })

      -- add borders to some floating things
      -- vim.lsp.handlers['textDocument/hover'] = lsp.with(vim.lsp.handlers.hover, { border = 'rounded', focusable = false })
      -- vim.lsp.handlers['textDocument/signatureHelp'] =
      -- lsp.with(vim.lsp.handlers.signature_help, { border = 'rounded', focusable = false })

      lsp.setup()

      local cmp = require('cmp')
      local cmp_select = { behavior = cmp.SelectBehavior.Select }
      local sources = lsp.defaults.cmp_sources()
      table.insert(sources, { name = 'nvim_lsp_signature_help' })

      local cmp_config = lsp.defaults.cmp_config({
        sources = sources,
        mapping = {
          ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
          ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        },
      })

      cmp.setup(cmp_config)

    end
  }
end

return M
