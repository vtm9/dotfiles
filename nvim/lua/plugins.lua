local ensurePackerInstalled = function()
  local install_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"
  if fn.empty(vim.fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packadd packer.nvim"
  end
  cmd("packadd packer.nvim")
end
ensurePackerInstalled()

au("BufWritePost", "**/nvim/lua/plugins/init.lua", "lua reload()")
au("BufWritePost", "**/nvim/lua/plugins/init.lua", "PackerCompile")
-- cmd [[ autocmd BufWritePost **/nvim/lua/plugins/*.lua lua reload() ]]
-- cmd [[ autocmd BufWritePost **/nvim/lua/plugins/*.lua PackerCompile ]]

local packer = {
  -- Packer can manage itself as an optional plugin
  "wbthomason/packer.nvim",
  opt = true
}

local textObjects = {
  "kana/vim-textobj-user",
  "kana/vim-textobj-entire",
  "kana/vim-textobj-indent",
  "glts/vim-textobj-comment",
  -- "andyl/vim-textobj-elixir",
  "mattn/vim-textobj-url",
  "nelstrom/vim-textobj-rubyblock",
  "wellle/targets.vim",
}

local core = {
  "vtm9/vim-pry",
  "vtm9/vim-interpolation",
  -- abbreviations, substitusion, coercion (transform case)
  "tpope/vim-abolish",
  -- add bunch of mappings like ]p ]e ]<space> etc.
  "tpope/vim-unimpaired",
  -- allows repeat via dot for some plugins like surround
  "tpope/vim-repeat",
  -- add\update\remove surround stuff like ''{}''
  "tpope/vim-surround",
  -- "machakann/vim-sandwich",
  -- auto brackets
  -- "cohama/lexima.vim",
  --  shiftwidth/expandtab/etc
  "tpope/vim-sleuth",
  'tpope/vim-eunuch',
  'tpope/vim-projectionist',
  'tpope/vim-bundler',
  'tpope/vim-rails',
  'tpope/vim-rhubarb',
  'tpope/vim-speeddating',
  'tpope/vim-jdaddy',
  'tpope/vim-endwise',
  'ntpeters/vim-better-whitespace',

  -- close all buffers but current
  { "schickling/vim-bufonly", config = require("plugins.vim-bufonly") },
  -- close buffer
  { "moll/vim-bbye", config = require("plugins.vim-bbye") },
  -- move to {motion}
  { "svermeulen/vim-subversive", config = require("plugins.vim-subversive") },
  -- gj gs
  { "AndrewRadev/splitjoin.vim", config = require("plugins.splitjoin") },
  -- \
  { "AndrewRadev/switch.vim" },
  -- help f/F
  { "unblevable/quick-scope", config = require("plugins.quick-scope") },
  -- highlight for % pairs
  "andymass/vim-matchup",
  -- better mapping
  "LionC/nest.nvim",
  -- run tests
  { 'vim-test/vim-test', config = require('plugins.vim-test') },
  "skywind3000/asynctasks.vim",
  "skywind3000/asyncrun.vim",
  "airblade/vim-rooter",
  -- "elixir-editors/vim-elixir",
  "c-brenn/phoenix.vim",
}

local git = {
  { "tpope/vim-fugitive", config = require("plugins.vim-fugitive") },
  { 'f-person/git-blame.nvim' }
}

local session = {
  -- start screen
  { "mhinz/vim-startify", config = require("plugins.vim-startify") },
  -- when navigate to previously opened files - open in last file position
  "farmergreg/vim-lastplace"
}

local tmuxAndSplits = {
  -- plugin for vim-tmux interactions
  { "numToStr/Navigator.nvim", config = require("plugins.navigator-nvim") },
  -- syntax high, K docs, something else...
  "tmux-plugins/vim-tmux"
  -- {"alex-popov-tech/shade.nvim", config = require("plugins.shade-nvim")}
}

-- local term = {
-- open terminal in floating window
-- "voldikss/vim-floaterm",
-- config = require("plugins.vim-floaterm")
-- }

local filetree = {
  -- file tree
  "kyazdani42/nvim-tree.lua",
  requires = 'kyazdani42/nvim-web-devicons',
  config = require("plugins.nvim-tree")
}

local fuzzyFinder = {
  { 'junegunn/fzf.vim' },
  {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/popup.nvim',
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
      { 'nvim-telescope/telescope-live-grep-args.nvim' }
    },
    config = require('plugins.telescope-nvim')
  },
  { 'windwp/nvim-spectre' }
  --
}

local coding = {
  -- add commenting for different langs
  "b3nj5m1n/kommentary",
  { "tpope/vim-commentary", config = require("plugins.vim-commentary") },
  -- plugin which allows vim to work with common editorconfig
  "editorconfig/editorconfig-vim",
  -- database viewer
  {
    "kristijanhusak/vim-dadbod-ui",
    config = require("plugins.vim-dadbod"),
    requires = { "tpope/vim-dadbod", "kristijanhusak/vim-dadbod-completion" }
  },
  { "tpope/vim-dotenv", config = require("plugins.vim-dotenv") },
  { "hashivim/vim-terraform", config = require("plugins.vim-terraform") },
  -- interactive eval whole buff
  { "metakirby5/codi.vim", config = require("plugins.codi-vim") }
}

local ui = {
  -- { 'marko-cerovac/material.nvim' },
  -- { 'projekt0n/github-nvim-theme' },
  --
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require 'colorizer'.setup(nil, { names = false, mode = 'foreground' })
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    config = require('plugins.lualine'),
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

}

local treesitter = {
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = require('plugins.nvim-treesitter')
  },
  {
    'windwp/nvim-ts-autotag',
    requires = { 'nvim-treesitter/nvim-treesitter' },
    config = function() require('nvim-ts-autotag').setup() end
  }
}

local lsp = {
  {
    'williamboman/mason-lspconfig.nvim',
    requires = { 'williamboman/mason.nvim', 'neovim/nvim-lspconfig' },
    config = function()
      local lsp = require('lsp')
      require('mason').setup()
      require('mason-lspconfig').setup({
        automatic_installation = true,
        ensure_installed = lsp.servers
      })
    end
  },
  { "WhoIsSethDaniel/mason-tool-installer.nvim", requires = { "williamboman/mason.nvim" },
    config = function()
      local tools = require('lsp.servers.nullls')
      require 'mason-tool-installer'.setup {
        ensure_installed = tools.list,
        run_on_start = true,
        start_delay = 2000, -- 3 second delay
      }
    end },
  { "jayp0521/mason-nvim-dap.nvim", requires = { "williamboman/mason.nvim" },
    config = function()
      require("mason-nvim-dap").setup({
        ensure_installed = { "delve" }
      })
    end },
  -- organize imports
  'jose-elias-alvarez/nvim-lsp-ts-utils',
  {
    'hrsh7th/nvim-cmp',
    config = require('plugins.nvim-cmp'),
    requires = {
      'onsails/lspkind-nvim',
      'octaltree/cmp-look',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
      'hrsh7th/cmp-emoji',
      {
        'tzachar/cmp-fuzzy-buffer',
        requires = {
          {
            'tzachar/fuzzy.nvim',
            requires = {
              { 'hrsh7th/cmp-buffer' },
              {
                'nvim-telescope/telescope-fzf-native.nvim',
                run = 'make'
              }
            }
          }
        }
      }
    }
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    requires = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' }
  },
  --[[ {
    'L3MON4D3/LuaSnip',
    requires = { 'rafamadriz/friendly-snippets' },
    config = require('plugins.luasnip')
  }, ]]
  {
    'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = require('plugins.trouble-nvim')
  },
  { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' }, -- code action
  {
    'smjonas/inc-rename.nvim',
    requires = { { 'stevearc/dressing.nvim', config = function()
      require("dressing").setup {
        input = {
          override = function(conf)
            conf.col = -1
            conf.row = 0
            return conf
          end,
        },
      }
    end } },
    config = function()
      require('inc_rename').setup({ cmd_name = 'Rename', input_buffer_type = "dressing" })
    end
  }, -- code action
  -- { 'j-hui/fidget.nvim', config = require('plugins.fidget-nvim') }, -- code action
  -- shema validation for JSON files
  { 'b0o/SchemaStore.nvim' }

}

local other = {
  { "dstein64/vim-startuptime", cmd = { "StartupTime" } },
  { "iamcco/markdown-preview.nvim", run = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, },

  {
    "NTBBloodbath/rest.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = require("plugins.rest-nvim")
  },
  { "junegunn/vim-easy-align" },
  { "junegunn/gv.vim" },
  { "mattn/emmet-vim" },
}

return require "packer".startup {

  function(use)
    require('plugins.lsp').run(use)
    use(packer)
    use(textObjects)
    use(core)
    use(git)
    use(session)
    use(tmuxAndSplits)
    -- use(term)
    use(filetree)
    use(fuzzyFinder)
    use(coding)
    use(ui)
    use { "catppuccin/nvim", as = "catppuccin" }
    use(treesitter)
    -- use(lsp)
    use(other)
    use 'shaunsingh/nord.nvim'
  end,
  config = {
    display = {
      open_fn = require "packer.util".float
    }
  }
}
