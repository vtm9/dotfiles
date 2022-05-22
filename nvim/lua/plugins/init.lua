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
    "andyl/vim-textobj-elixir",
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

    -- close all buffers but current
    {"schickling/vim-bufonly", config = require("plugins.vim-bufonly")},
    -- close buffer
    {"moll/vim-bbye", config = require("plugins.vim-bbye")},
    -- move to {motion}
    {"svermeulen/vim-subversive", config = require("plugins.vim-subversive")},
    -- gj gs
    {"AndrewRadev/splitjoin.vim", config = require("plugins.splitjoin")},
    -- \
    {"AndrewRadev/switch.vim"},
    -- help f/F
    {"unblevable/quick-scope", config = require("plugins.quick-scope")},
    -- highlight for % pairs
    "andymass/vim-matchup",
    -- better mapping
    "LionC/nest.nvim" ,
    -- run tests
    {'vim-test/vim-test', config = require('plugins.vim-test')},
    "skywind3000/asynctasks.vim",
    "skywind3000/asyncrun.vim",
    "airblade/vim-rooter",
    "elixir-editors/vim-elixir",
    "c-brenn/phoenix.vim",
}

local git = {
    "tpope/vim-fugitive",
    config = require("plugins.vim-fugitive")
}

local session = {
    -- start screen
    {"mhinz/vim-startify", config = require("plugins.vim-startify")},
    -- when navigate to previously opened files - open in last file position
    "farmergreg/vim-lastplace"
}

local tmuxAndSplits = {
    -- plugin for vim-tmux interactions
    {"numToStr/Navigator.nvim", config = require("plugins.navigator-nvim")},
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

    {'junegunn/fzf.vim'},

    -- {
    --     "nvim-telescope/telescope.nvim",
    --     requires = {
    --         "nvim-lua/popup.nvim",
    --         "nvim-lua/plenary.nvim"
    --     },
    --     config = require("plugins.telescope-nvim")

    -- },
    -- {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
    {
        "windwp/nvim-spectre",
        config = require("plugins.spectre"),
        requires = {"nvim-lua/plenary.nvim", "nvim-lua/popup.nvim"}
    }
}

local coding = {
    -- add commenting for different langs
    "b3nj5m1n/kommentary",
    {"tpope/vim-commentary", config = require("plugins.vim-commentary")},
    -- plugin which allows vim to work with common editorconfig
    "editorconfig/editorconfig-vim",
    -- database viewer
    {
        "kristijanhusak/vim-dadbod-ui",
        config = require("plugins.vim-dadbod"),
        requires = {"tpope/vim-dadbod", "kristijanhusak/vim-dadbod-completion"}
    },
    {"tpope/vim-dotenv", config = require("plugins.vim-dotenv")},
    {"hashivim/vim-terraform", config = require("plugins.vim-terraform")},
    -- interactive eval whole buff
    {"metakirby5/codi.vim", config = require("plugins.codi-vim")}
}

local ui = {
    -- top buff line
    {"akinsho/nvim-bufferline.lua", config = require("plugins.nvim-bufferline")},
    -- statusline
    {
        "glepnir/galaxyline.nvim",
        requires = {"kyazdani42/nvim-web-devicons", opt = true},
        config = require("plugins.galaxyline-nvim")
    },
    -- color scheme
    {"sainnhe/sonokai", config = require("plugins.sonokai")},
    {
        "rrethy/vim-hexokinase",
        run = "make hexokinase",
        config = function()
            vim.g.Hexokinase_highlighters = {"foregroundfull"}
        end
    } -- highlight hex colors in buffer
}

local treesitter = {
    {"slim-template/vim-slim", ft = {'slim', 'slime', 'slimleex' }}
    -- {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate", config = require("plugins.nvim-treesitter")},
    -- { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", config = require("plugins.nvim-treesitter") },
    -- { "theHamsta/nvim-treesitter-pairs", },
    -- {"David-Kunz/treesitter-unit", config = require("plugins.treesitter-unit")}
}

local lsp = {
    -- lsp configs placed here
    --
    {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'},
    -- "neovim/nvim-lspconfig",
    -- {"williamboman/nvim-lsp-installer"},
    -- just a bit better ts support
    -- "jose-elias-alvarez/nvim-lsp-ts-utils",
    -- pretty references/codeaction
    -- {"RishabhRD/nvim-lsputils", requires = {"RishabhRD/popfix"}, config = require("plugins.nvim-lsputils")},
    -- plugin to add completeion possibility
    {
        "hrsh7th/nvim-cmp",
        config = require("plugins.nvim-cmp"),
        requires = {
            -- "onsails/lspkind-nvim",
            "f3fora/cmp-spell",
            "octaltree/cmp-look",
            "hrsh7th/cmp-path",
            -- "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-emoji"
        }
    },
    -- snippeds
    -- colors for lsp if your theme have not
    -- "folke/lsp-colors.nvim",
    -- {"tami5/lspsaga.nvim", config = require("plugins.lspsaga")},
    -- {"rinx/lspsaga.nvim", config = require("plugins.lspsaga")},
    -- diagnostics
    {"folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons", config = require("plugins.trouble-nvim")},
    -- pretty hover and references/implementations/codeaction
    -- {"ray-x/lsp_signature.nvim", config = require("plugins.lsp_signature-nvim")}
    {"weilbith/nvim-code-action-menu", cmd = "CodeActionMenu"}
}

local other = {
    {"dstein64/vim-startuptime", cmd = {"StartupTime"}},
    {"iamcco/markdown-preview.nvim"},
    {"shime/vim-livedown"},

    {
        "NTBBloodbath/rest.nvim",
        requires = {"nvim-lua/plenary.nvim"},
        config = require("plugins.rest-nvim")
    },
    {"junegunn/vim-easy-align"},
    {"junegunn/gv.vim"},
}

local spotify =  {
    'KadoBOT/nvim-spotify', 
    requires = 'nvim-telescope/telescope.nvim',
    config = function()
        local spotify = require'nvim-spotify'
    end,
    run = 'make'
}

return require "packer".startup {
    function(use)
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
        -- use(treesitter)
        use(lsp)
        use(spotify)
        use(other)
    end,
    config = {
        display = {
            open_fn = require "packer.util".float
        }
    }
}
