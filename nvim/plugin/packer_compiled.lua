-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/vtm/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/vtm/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/vtm/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/vtm/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/vtm/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["Navigator.nvim"] = {
    config = { "\27LJ\2\nÒ\2\0\0\5\0\14\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0'\2\5\0'\3\6\0'\4\a\0B\0\4\0016\0\4\0'\2\5\0'\3\b\0'\4\t\0B\0\4\0016\0\4\0'\2\5\0'\3\n\0'\4\v\0B\0\4\0016\0\4\0'\2\5\0'\3\f\0'\4\r\0B\0\4\1K\0\1\0.<CMD>lua require('Navigator').right()<CR>\n<c-l>+<CMD>lua require('Navigator').up()<CR>\n<c-k>-<CMD>lua require('Navigator').down()<CR>\n<c-j>-<CMD>lua require('Navigator').left()<CR>\n<c-h>\5\bmap\1\0\2\20disable_on_zoom\1\14auto_save\fcurrent\nsetup\14Navigator\frequire\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/Navigator.nvim",
    url = "https://github.com/numToStr/Navigator.nvim"
  },
  ["asyncrun.vim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/asyncrun.vim",
    url = "https://github.com/skywind3000/asyncrun.vim"
  },
  ["asynctasks.vim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/asynctasks.vim",
    url = "https://github.com/skywind3000/asynctasks.vim"
  },
  catppuccin = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["codi.vim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28cnoreabbrev Eval Codi!!\bcmd\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/codi.vim",
    url = "https://github.com/metakirby5/codi.vim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["git-blame.nvim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/git-blame.nvim",
    url = "https://github.com/f-person/git-blame.nvim"
  },
  ["gv.vim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/gv.vim",
    url = "https://github.com/junegunn/gv.vim"
  },
  kommentary = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/kommentary",
    url = "https://github.com/b3nj5m1n/kommentary"
  },
  ["lsp-zero.nvim"] = {
    config = { "\27LJ\2\n≈\2\0\2\n\0\18\00035\2\0\0=\1\1\0026\3\2\0009\3\3\0039\3\4\3\18\4\3\0'\6\5\0'\a\6\0006\b\2\0009\b\a\b9\b\b\b9\b\t\b\18\t\2\0B\4\5\1\18\4\3\0'\6\5\0'\a\n\0006\b\2\0009\b\a\b9\b\b\b9\b\v\b\18\t\2\0B\4\5\1\18\4\3\0'\6\5\0'\a\f\0006\b\2\0009\b\a\b9\b\b\b9\b\r\b\18\t\2\0B\4\5\1\18\4\3\0'\6\5\0'\a\14\0006\b\2\0009\b\a\b9\b\b\b9\b\15\b\18\t\2\0B\4\5\1\18\4\3\0'\6\5\0'\a\16\0006\b\2\0009\b\a\b9\b\b\b9\b\17\b\18\t\2\0B\4\5\1K\0\1\0\nhover\6K\15definition\agd\16code_action\15<leader>ca\vrename\agr\vformat\bbuf\blsp\14<leader>l\6n\bset\vkeymap\bvim\vbuffer\1\0\1\nremap\1ª\6\1\0\v\0'\0C6\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0B\1\2\0019\1\4\0006\3\5\0B\1\2\0019\1\6\0003\3\a\0B\1\2\0016\1\b\0009\1\t\1'\3\n\0B\1\2\0016\1\b\0009\1\t\1'\3\v\0B\1\2\0016\1\b\0009\1\f\0019\1\r\0015\3\14\0005\4\15\0=\4\16\0035\4\17\0=\4\18\3B\1\2\0019\1\19\0B\1\1\0016\1\0\0'\3\20\0B\1\2\0025\2\23\0009\3\21\0019\3\22\3=\3\24\0029\3\25\0009\3\26\3B\3\1\0026\4\27\0009\4\28\4\18\6\3\0005\a\29\0B\4\3\0019\4\25\0009\4\30\0045\6\31\0=\3 \0065\a#\0009\b!\0019\b\"\b\18\n\2\0B\b\2\2=\b$\a9\b!\0019\b%\b\18\n\2\0B\b\2\2=\b&\a=\a!\6B\4\2\0029\5\19\1\18\a\4\0B\5\2\1K\0\1\0\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsources\1\0\0\15cmp_config\1\0\1\tname\28nvim_lsp_signature_help\vinsert\ntable\16cmp_sources\rdefaults\rbehavior\1\0\0\vSelect\19SelectBehavior\bcmp\nsetup\nfloat\1\0\3\vborder\frounded\14focusable\1\nscope\tline\17virtual_text\1\0\1\vprefix\6<\1\0\3\18severity_sort\2\14underline\2\nsigns\2\vconfig\15diagnosticTsign define DiagnosticSignError text= texthl= numhl=DiagnosticSignError linehl=Rsign define DiagnosticSignWarn text= texthl= numhl=DiagnosticSignWarn linehl=\bcmd\bvim\0\14on_attach\fservers\21ensure_installed\16recommended\vpreset\rlsp-zero\frequire\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\në\6\0\0\6\0%\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0004\5\0\0=\5\t\0044\5\0\0=\5\n\4=\4\v\0034\4\0\0=\4\f\0035\4\r\0=\4\14\3=\3\16\0025\3\18\0005\4\17\0=\4\19\0034\4\3\0005\5\20\0>\5\1\4=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\28\0025\3\29\0004\4\0\0=\4\19\0034\4\0\0=\4\21\0035\4\30\0=\4\31\0035\4 \0=\4\23\0034\4\0\0=\4\25\0034\4\0\0=\4\27\3=\3!\0024\3\0\0=\3\"\0024\3\0\0=\3\n\0024\3\0\0=\3#\0024\3\0\0=\3$\2B\0\2\1K\0\1\0\15extensions\20inactive_winbar\ftabline\22inactive_sections\1\2\0\0\rlocation\14lualine_c\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_b\1\2\1\0\rfilename\tpath\3\1\14lualine_a\1\0\0\1\4\0\0\vbranch\tdiff\16diagnostics\foptions\1\0\0\frefresh\1\0\3\vwinbar\3Ë\a\ftabline\3Ë\a\15statusline\3Ë\a\17ignore_focus\23disabled_filetypes\vwinbar\15statusline\1\0\0\23section_separators\1\0\2\nright\bÓÇ≤\tleft\bÓÇ∞\25component_separators\1\0\2\nright\bÓÇ≥\tleft\bÓÇ±\1\0\4\17globalstatus\1\25always_divide_middle\2\ntheme\tauto\18icons_enabled\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nest.nvim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/nest.nvim",
    url = "https://github.com/LionC/nest.nvim"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/nord.nvim",
    url = "https://github.com/shaunsingh/nord.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\nY\0\0\4\0\4\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0+\2\0\0005\3\3\0B\0\3\1K\0\1\0\1\0\2\tmode\15foreground\nnames\1\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://github.com/windwp/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nÉ\5\0\0\a\0\28\0%6\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\0016\0\4\0'\1\6\0=\1\5\0006\0\4\0)\1\30\0=\1\a\0006\0\4\0)\1\1\0=\1\b\0006\0\t\0'\2\n\0B\0\2\0029\0\v\0005\2\f\0005\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0005\4\19\0005\5\18\0=\5\20\0045\5\21\0005\6\22\0=\6\14\0055\6\23\0=\6\24\5=\5\25\4=\4\26\3=\3\27\2B\0\2\1K\0\1\0\rrenderer\nicons\vglyphs\vfolder\1\0\2\fdefault\bÓóø\topen\bÓóæ\1\0\5\14untracked\b‚òÖ\runmerged\bÓúß\vstaged\b‚úì\runstaged\b‚úó\frenamed\b‚ûú\1\0\2\fdefault\bÓòí\fsymlink\bÔíÅ\tshow\1\0\0\1\0\3\tfile\2\vfolder\2\bgit\2\1\0\1\18highlight_git\2\ffilters\1\0\1\rdotfiles\1\bgit\1\0\1\vignore\1\1\0\2\18disable_netrw\1\18open_on_setup\2\nsetup\14nvim-tree\frequire\27nvim_tree_allow_resize\20nvim_tree_width\tleft\19nvim_tree_side\6gÉ\1:lua if ft() == 'NvimTree' or ft() == 'startify' then vim.cmd('NvimTreeToggle') else vim.cmd('NvimTreeFindFileToggle') end<cr>\n<c-n>\6n\bmap\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\ná\5\0\0\6\0\26\0\"6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0006\1\0\0'\3\t\0B\1\2\0029\1\n\0015\3\v\0005\4\f\0=\4\r\0035\4\14\0005\5\15\0=\5\16\4=\4\17\0035\4\18\0=\4\19\0035\4\20\0004\5\0\0=\5\21\0044\5\0\0=\5\22\0045\5\23\0=\5\24\4=\4\25\3B\1\2\1K\0\1\0\npairs\fkeymaps\1\0\1\17goto_partner\14<leader>%\26highlight_pair_events\fdisable\1\0\4\24fallback_cmd_normal)call matchit#Match_wrapper('',1,'n')\19goto_right_end\1\19highlight_self\1\venable\2\26context_commentstring\1\0\1\venable\2\14highlight\vindent\1\0\1\venable\2\1\0\2\21use_languagetree\2\venable\2\19ignore_install\1\2\0\0\fhaskell\1\0\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\17install_info\1\0\0\nfiles\1\2\0\0\17src/parser.c\1\0\2\vbranch\tmain\burl5https://github.com/NTBBloodbath/tree-sitter-http\thttp\23get_parser_configs\28nvim-treesitter.parsers\frequire\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["phoenix.vim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/phoenix.vim",
    url = "https://github.com/c-brenn/phoenix.vim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["quick-scope"] = {
    config = { "\27LJ\2\n:\0\0\2\0\3\0\0046\0\0\0005\1\2\0=\1\1\0K\0\1\0\1\5\0\0\6f\6F\6t\6T\25qs_highlight_on_keys\6g\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/quick-scope",
    url = "https://github.com/unblevable/quick-scope"
  },
  ["rest.nvim"] = {
    config = { "\27LJ\2\n®\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\2\fenabled\2\ftimeout\3ñ\1\1\0\3\28result_split_horizontal\1\20jump_to_request\1\26skip_ssl_verification\1\nsetup\14rest-nvim\frequire\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/rest.nvim",
    url = "https://github.com/NTBBloodbath/rest.nvim"
  },
  ["splitjoin.vim"] = {
    config = { "\27LJ\2\nf\0\0\5\0\6\0\v6\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\0016\0\0\0'\2\1\0'\3\4\0'\4\5\0B\0\4\1K\0\1\0\24:SplitjoinSplit<cr>\ags\23:SplitjoinJoin<cr>\agj\6n\bmap\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/splitjoin.vim",
    url = "https://github.com/AndrewRadev/splitjoin.vim"
  },
  ["switch.vim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/switch.vim",
    url = "https://github.com/AndrewRadev/switch.vim"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/targets.vim",
    url = "https://github.com/wellle/targets.vim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-live-grep-args.nvim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/telescope-live-grep-args.nvim",
    url = "https://github.com/nvim-telescope/telescope-live-grep-args.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n)\0\0\3\2\1\0\5-\0\0\0009\0\0\0-\2\1\0B\0\2\1K\0\1\0\1¿\2¿\14git_filesR\0\0\6\2\3\0\b-\0\0\0009\0\0\0006\2\1\0-\4\1\0005\5\2\0B\2\3\0A\0\0\1K\0\1\0\1¿\2¿\1\0\2\14no_ignore\2\vhidden\2\nmerge\15find_files)\0\0\3\2\1\0\5-\0\0\0009\0\0\0-\2\1\0B\0\2\1K\0\1\0\1¿\3¿\14live_grep(\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\3\0\0\r--hidden\16--no-ignoreo\1\0\a\2\6\0\f-\0\0\0009\0\0\0009\0\1\0009\0\1\0006\2\2\0-\4\1\0005\5\4\0003\6\3\0=\6\5\5B\2\3\0A\0\0\1K\0\1\0\0¿\3¿\20additional_args\1\0\0\0\nmerge\19live_grep_args\15extensions+\0\0\3\2\1\0\5-\0\0\0009\0\0\0-\2\1\0B\0\2\1K\0\1\0\1¿\3¿\16grep_string(\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\3\0\0\r--hidden\16--no-ignoreY\1\0\a\2\5\0\n-\0\0\0009\0\0\0006\2\1\0-\4\1\0005\5\3\0003\6\2\0=\6\4\5B\2\3\0A\0\0\1K\0\1\0\1¿\3¿\20additional_args\1\0\0\0\nmerge\16grep_stringK\0\0\6\2\3\0\b-\0\0\0009\0\0\0006\2\1\0-\4\1\0005\5\2\0B\2\3\0A\0\0\1K\0\1\0\1¿\2¿\1\0\1\18sort_lastused\2\nmerge\fbuffersG\0\0\6\2\3\0\b-\0\0\0009\0\0\0006\2\1\0-\4\1\0005\5\2\0B\2\3\0A\0\0\1K\0\1\0\1¿\2¿\1\0\1\rcwd_only\2\nmerge\roldfiles \5\1\0\t\0%\0G6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\a\3B\1\2\0019\1\b\0'\3\t\0B\1\2\0019\1\b\0'\3\5\0B\1\2\0016\1\0\0'\3\n\0B\1\2\0025\2\v\0005\3\f\0=\3\r\0025\3\14\0005\4\15\0=\4\r\0036\4\16\0'\6\17\0'\a\18\0003\b\19\0B\4\4\0016\4\16\0'\6\17\0'\a\20\0003\b\21\0B\4\4\0016\4\16\0'\6\17\0'\a\22\0003\b\23\0B\4\4\0016\4\16\0'\6\17\0'\a\24\0003\b\25\0B\4\4\0016\4\16\0'\6\17\0'\a\26\0003\b\27\0B\4\4\0016\4\16\0'\6\17\0'\a\28\0003\b\29\0B\4\4\0016\4\16\0'\6\17\0'\a\30\0003\b\31\0B\4\4\0016\4\16\0'\6\17\0'\a \0003\b!\0B\4\4\0016\4\"\0'\6#\0005\a$\0B\4\3\0012\0\0ÄK\0\1\0\1\0\1\nguibg\tnone\20TelescopeNormal\ahi\0\agh\0\agb\0\agO\0\ago\0\agC\0\agc\0\agF\0\agf\6n\bmap\1\0\2\vheight\4Õô≥Ê\fÃô≥ˇ\3\nwidth\4Õô≥Ê\fÃô≥ˇ\3\1\0\1\20layout_strategy\rvertical\18layout_config\1\0\4\18preview_width\4ö≥ÊÃ\tô≥Ê˛\3\nwidth\4Õô≥Ê\fÃô≥ˇ\3\vheight\4Õô≥Ê\fÃô≥ˇ\3\vmirror\1\1\0\1\20layout_strategy\15horizontal\22telescope.builtin\19live_grep_args\19load_extension\15extensions\1\0\0\bfzf\1\0\0\1\0\4\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nx\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\tmode\25document_diagnostics\25lsp_diagnostic_signs\2\15auto_close\2\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-abolish",
    url = "https://github.com/tpope/vim-abolish"
  },
  ["vim-bbye"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27cnoreabbrev bd Bdelete\bcmd\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://github.com/moll/vim-bbye"
  },
  ["vim-better-whitespace"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-better-whitespace",
    url = "https://github.com/ntpeters/vim-better-whitespace"
  },
  ["vim-bufonly"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25cnoreabbrev bo Bonly\bcmd\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-bufonly",
    url = "https://github.com/schickling/vim-bufonly"
  },
  ["vim-bundler"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-bundler",
    url = "https://github.com/tpope/vim-bundler"
  },
  ["vim-commentary"] = {
    config = { "\27LJ\2\nÿ\1\0\0\3\0\6\0\0176\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\1K\0\1\0$nmap <leader>c <Plug>Commentary$omap <leader>c <Plug>Commentary$xmap <leader>c <Plug>Commentary)nmap <leader>cc <Plug>CommentaryLine\bcmd\bvim\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-dadbod",
    url = "https://github.com/tpope/vim-dadbod"
  },
  ["vim-dadbod-completion"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-dadbod-completion",
    url = "https://github.com/kristijanhusak/vim-dadbod-completion"
  },
  ["vim-dadbod-ui"] = {
    config = { "\27LJ\2\nê\1\0\0\2\0\5\0\r6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0K\0\1\0\25db_ui_use_nerd_fonts\29db_ui_show_database_icon%db_ui_auto_execute_table_helpers\6g\bvim\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui",
    url = "https://github.com/kristijanhusak/vim-dadbod-ui"
  },
  ["vim-dotenv"] = {
    config = { "\27LJ\2\nç\1\0\0\5\0\a\0\v6\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\0016\0\0\0'\2\4\0'\3\5\0'\4\6\0B\0\4\1K\0\1\0\16Dotenv .env\t.env\17BufWritePost2if !empty(glob('.env')) | Dotenv .env | endif\6*\rVimEnter\aau\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-dotenv",
    url = "https://github.com/tpope/vim-dotenv"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-endwise"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-endwise",
    url = "https://github.com/tpope/vim-endwise"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  },
  ["vim-fugitive"] = {
    config = { "\27LJ\2\nˆ\1\0\0\5\0\v\0\0236\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0016\0\5\0'\2\6\0'\3\a\0'\4\b\0B\0\4\0016\0\5\0'\2\6\0'\3\t\0'\4\n\0B\0\4\1K\0\1\0\21:diffget //3<cr>\agt\21:diffget //2<cr>\agm\6n\bmap\22cnoreabbrev gs Gs\26command! Gs :Git | on%cnoreabbrev gpf Git push --force\28cnoreabbrev gp Git push\bcmd\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-interpolation"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-interpolation",
    url = "https://github.com/vtm9/vim-interpolation"
  },
  ["vim-jdaddy"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-jdaddy",
    url = "https://github.com/tpope/vim-jdaddy"
  },
  ["vim-lastplace"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-lastplace",
    url = "https://github.com/farmergreg/vim-lastplace"
  },
  ["vim-livedown"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-livedown",
    url = "https://github.com/shime/vim-livedown"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-projectionist"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-projectionist",
    url = "https://github.com/tpope/vim-projectionist"
  },
  ["vim-pry"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-pry",
    url = "https://github.com/vtm9/vim-pry"
  },
  ["vim-rails"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-rails",
    url = "https://github.com/tpope/vim-rails"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-rooter",
    url = "https://github.com/airblade/vim-rooter"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-sleuth",
    url = "https://github.com/tpope/vim-sleuth"
  },
  ["vim-speeddating"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-speeddating",
    url = "https://github.com/tpope/vim-speeddating"
  },
  ["vim-startify"] = {
    config = { "\27LJ\2\nú\2\0\0\a\0\v\0\0236\0\0\0004\1\3\0005\2\2\0004\3\3\0'\4\3\0006\5\4\0009\5\5\5B\5\1\2&\4\5\4>\4\1\3=\3\6\2>\2\1\1=\1\1\0006\0\0\0)\1\1\0=\1\a\0006\0\0\0)\1\1\0=\1\b\0006\0\0\0005\1\n\0=\1\t\0K\0\1\0\1\17\0\0\6a\6r\6s\6t\6n\6e\6o\6i\3\1\3\2\3\3\3\4\3\a\3\b\3\t\3\0\28startify_custom_indices\28startify_enable_special startify_change_to_vcs_root\vheader\vgetcwd\afn\31 Most recently updated in \1\0\1\ttype\bdir\19startify_lists\6g\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-startify",
    url = "https://github.com/mhinz/vim-startify"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/opt/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["vim-subversive"] = {
    config = { "\27LJ\2\nÀ\2\0\0\5\0\6\0\v6\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\0016\0\0\0'\2\1\0'\3\4\0'\4\5\0B\0\4\1K\0\1\0ç\1:<c-u>call subversive#singleMotion#substituteLineSetup(v:register, v:count)<cr>:set opfunc=subversive#singleMotion#substituteLine<cr>g@l\ammÜ\1:<c-u>call subversive#singleMotion#preSubstitute(v:register, 0, '')<cr>:set opfunc=subversive#singleMotion#substituteMotion<cr>g@\6m\6n\bmap\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-subversive",
    url = "https://github.com/svermeulen/vim-subversive"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-terraform"] = {
    config = { "\27LJ\2\nS\0\0\2\0\3\0\a6\0\0\0)\1\1\0=\1\1\0006\0\0\0)\1\1\0=\1\2\0K\0\1\0\26terraform_fmt_on_save\28terraform_fold_sections\6g\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-terraform",
    url = "https://github.com/hashivim/vim-terraform"
  },
  ["vim-test"] = {
    config = { "\27LJ\2\n¯\3\0\0\6\0\22\0-6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\16\0'\4\17\0005\5\18\0B\0\5\0016\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\19\0'\4\20\0005\5\21\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\23<cmd>TestVisit<CR>\15<leader>tv\1\0\2\vsilent\2\fnoremap\2\22<cmd>TestLast<CR>\15<leader>tl\1\0\2\vsilent\2\fnoremap\2\23<cmd>TestSuite<CR>\15<leader>ts\1\0\2\vsilent\2\fnoremap\2\22<cmd>TestFile<CR>\15<leader>tf\1\0\2\vsilent\2\fnoremap\2\25<cmd>TestNearest<CR>\15<leader>tn\6n\20nvim_set_keymap\bapi\29asyncrun_background_term\18test#strategy\6g\bvim\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  },
  ["vim-textobj-comment"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-textobj-comment",
    url = "https://github.com/glts/vim-textobj-comment"
  },
  ["vim-textobj-entire"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-textobj-entire",
    url = "https://github.com/kana/vim-textobj-entire"
  },
  ["vim-textobj-indent"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-textobj-indent",
    url = "https://github.com/kana/vim-textobj-indent"
  },
  ["vim-textobj-rubyblock"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-textobj-rubyblock",
    url = "https://github.com/nelstrom/vim-textobj-rubyblock"
  },
  ["vim-textobj-url"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-textobj-url",
    url = "https://github.com/mattn/vim-textobj-url"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-textobj-user",
    url = "https://github.com/kana/vim-textobj-user"
  },
  ["vim-tmux"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-tmux",
    url = "https://github.com/tmux-plugins/vim-tmux"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: vim-dadbod-ui
time([[Config for vim-dadbod-ui]], true)
try_loadstring("\27LJ\2\nê\1\0\0\2\0\5\0\r6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0K\0\1\0\25db_ui_use_nerd_fonts\29db_ui_show_database_icon%db_ui_auto_execute_table_helpers\6g\bvim\0", "config", "vim-dadbod-ui")
time([[Config for vim-dadbod-ui]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nx\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\tmode\25document_diagnostics\25lsp_diagnostic_signs\2\15auto_close\2\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: splitjoin.vim
time([[Config for splitjoin.vim]], true)
try_loadstring("\27LJ\2\nf\0\0\5\0\6\0\v6\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\0016\0\0\0'\2\1\0'\3\4\0'\4\5\0B\0\4\1K\0\1\0\24:SplitjoinSplit<cr>\ags\23:SplitjoinJoin<cr>\agj\6n\bmap\0", "config", "splitjoin.vim")
time([[Config for splitjoin.vim]], false)
-- Config for: vim-dotenv
time([[Config for vim-dotenv]], true)
try_loadstring("\27LJ\2\nç\1\0\0\5\0\a\0\v6\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\0016\0\0\0'\2\4\0'\3\5\0'\4\6\0B\0\4\1K\0\1\0\16Dotenv .env\t.env\17BufWritePost2if !empty(glob('.env')) | Dotenv .env | endif\6*\rVimEnter\aau\0", "config", "vim-dotenv")
time([[Config for vim-dotenv]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\ná\5\0\0\6\0\26\0\"6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0006\1\0\0'\3\t\0B\1\2\0029\1\n\0015\3\v\0005\4\f\0=\4\r\0035\4\14\0005\5\15\0=\5\16\4=\4\17\0035\4\18\0=\4\19\0035\4\20\0004\5\0\0=\5\21\0044\5\0\0=\5\22\0045\5\23\0=\5\24\4=\4\25\3B\1\2\1K\0\1\0\npairs\fkeymaps\1\0\1\17goto_partner\14<leader>%\26highlight_pair_events\fdisable\1\0\4\24fallback_cmd_normal)call matchit#Match_wrapper('',1,'n')\19goto_right_end\1\19highlight_self\1\venable\2\26context_commentstring\1\0\1\venable\2\14highlight\vindent\1\0\1\venable\2\1\0\2\21use_languagetree\2\venable\2\19ignore_install\1\2\0\0\fhaskell\1\0\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\17install_info\1\0\0\nfiles\1\2\0\0\17src/parser.c\1\0\2\vbranch\tmain\burl5https://github.com/NTBBloodbath/tree-sitter-http\thttp\23get_parser_configs\28nvim-treesitter.parsers\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: vim-bbye
time([[Config for vim-bbye]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27cnoreabbrev bd Bdelete\bcmd\0", "config", "vim-bbye")
time([[Config for vim-bbye]], false)
-- Config for: lsp-zero.nvim
time([[Config for lsp-zero.nvim]], true)
try_loadstring("\27LJ\2\n≈\2\0\2\n\0\18\00035\2\0\0=\1\1\0026\3\2\0009\3\3\0039\3\4\3\18\4\3\0'\6\5\0'\a\6\0006\b\2\0009\b\a\b9\b\b\b9\b\t\b\18\t\2\0B\4\5\1\18\4\3\0'\6\5\0'\a\n\0006\b\2\0009\b\a\b9\b\b\b9\b\v\b\18\t\2\0B\4\5\1\18\4\3\0'\6\5\0'\a\f\0006\b\2\0009\b\a\b9\b\b\b9\b\r\b\18\t\2\0B\4\5\1\18\4\3\0'\6\5\0'\a\14\0006\b\2\0009\b\a\b9\b\b\b9\b\15\b\18\t\2\0B\4\5\1\18\4\3\0'\6\5\0'\a\16\0006\b\2\0009\b\a\b9\b\b\b9\b\17\b\18\t\2\0B\4\5\1K\0\1\0\nhover\6K\15definition\agd\16code_action\15<leader>ca\vrename\agr\vformat\bbuf\blsp\14<leader>l\6n\bset\vkeymap\bvim\vbuffer\1\0\1\nremap\1ª\6\1\0\v\0'\0C6\0\0\0'\2\1\0B\0\2\0029\1\2\0'\3\3\0B\1\2\0019\1\4\0006\3\5\0B\1\2\0019\1\6\0003\3\a\0B\1\2\0016\1\b\0009\1\t\1'\3\n\0B\1\2\0016\1\b\0009\1\t\1'\3\v\0B\1\2\0016\1\b\0009\1\f\0019\1\r\0015\3\14\0005\4\15\0=\4\16\0035\4\17\0=\4\18\3B\1\2\0019\1\19\0B\1\1\0016\1\0\0'\3\20\0B\1\2\0025\2\23\0009\3\21\0019\3\22\3=\3\24\0029\3\25\0009\3\26\3B\3\1\0026\4\27\0009\4\28\4\18\6\3\0005\a\29\0B\4\3\0019\4\25\0009\4\30\0045\6\31\0=\3 \0065\a#\0009\b!\0019\b\"\b\18\n\2\0B\b\2\2=\b$\a9\b!\0019\b%\b\18\n\2\0B\b\2\2=\b&\a=\a!\6B\4\2\0029\5\19\1\18\a\4\0B\5\2\1K\0\1\0\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsources\1\0\0\15cmp_config\1\0\1\tname\28nvim_lsp_signature_help\vinsert\ntable\16cmp_sources\rdefaults\rbehavior\1\0\0\vSelect\19SelectBehavior\bcmp\nsetup\nfloat\1\0\3\vborder\frounded\14focusable\1\nscope\tline\17virtual_text\1\0\1\vprefix\6<\1\0\3\18severity_sort\2\14underline\2\nsigns\2\vconfig\15diagnosticTsign define DiagnosticSignError text= texthl= numhl=DiagnosticSignError linehl=Rsign define DiagnosticSignWarn text= texthl= numhl=DiagnosticSignWarn linehl=\bcmd\bvim\0\14on_attach\fservers\21ensure_installed\16recommended\vpreset\rlsp-zero\frequire\0", "config", "lsp-zero.nvim")
time([[Config for lsp-zero.nvim]], false)
-- Config for: vim-terraform
time([[Config for vim-terraform]], true)
try_loadstring("\27LJ\2\nS\0\0\2\0\3\0\a6\0\0\0)\1\1\0=\1\1\0006\0\0\0)\1\1\0=\1\2\0K\0\1\0\26terraform_fmt_on_save\28terraform_fold_sections\6g\0", "config", "vim-terraform")
time([[Config for vim-terraform]], false)
-- Config for: vim-bufonly
time([[Config for vim-bufonly]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25cnoreabbrev bo Bonly\bcmd\0", "config", "vim-bufonly")
time([[Config for vim-bufonly]], false)
-- Config for: vim-fugitive
time([[Config for vim-fugitive]], true)
try_loadstring("\27LJ\2\nˆ\1\0\0\5\0\v\0\0236\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0016\0\5\0'\2\6\0'\3\a\0'\4\b\0B\0\4\0016\0\5\0'\2\6\0'\3\t\0'\4\n\0B\0\4\1K\0\1\0\21:diffget //3<cr>\agt\21:diffget //2<cr>\agm\6n\bmap\22cnoreabbrev gs Gs\26command! Gs :Git | on%cnoreabbrev gpf Git push --force\28cnoreabbrev gp Git push\bcmd\0", "config", "vim-fugitive")
time([[Config for vim-fugitive]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n)\0\0\3\2\1\0\5-\0\0\0009\0\0\0-\2\1\0B\0\2\1K\0\1\0\1¿\2¿\14git_filesR\0\0\6\2\3\0\b-\0\0\0009\0\0\0006\2\1\0-\4\1\0005\5\2\0B\2\3\0A\0\0\1K\0\1\0\1¿\2¿\1\0\2\14no_ignore\2\vhidden\2\nmerge\15find_files)\0\0\3\2\1\0\5-\0\0\0009\0\0\0-\2\1\0B\0\2\1K\0\1\0\1¿\3¿\14live_grep(\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\3\0\0\r--hidden\16--no-ignoreo\1\0\a\2\6\0\f-\0\0\0009\0\0\0009\0\1\0009\0\1\0006\2\2\0-\4\1\0005\5\4\0003\6\3\0=\6\5\5B\2\3\0A\0\0\1K\0\1\0\0¿\3¿\20additional_args\1\0\0\0\nmerge\19live_grep_args\15extensions+\0\0\3\2\1\0\5-\0\0\0009\0\0\0-\2\1\0B\0\2\1K\0\1\0\1¿\3¿\16grep_string(\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\3\0\0\r--hidden\16--no-ignoreY\1\0\a\2\5\0\n-\0\0\0009\0\0\0006\2\1\0-\4\1\0005\5\3\0003\6\2\0=\6\4\5B\2\3\0A\0\0\1K\0\1\0\1¿\3¿\20additional_args\1\0\0\0\nmerge\16grep_stringK\0\0\6\2\3\0\b-\0\0\0009\0\0\0006\2\1\0-\4\1\0005\5\2\0B\2\3\0A\0\0\1K\0\1\0\1¿\2¿\1\0\1\18sort_lastused\2\nmerge\fbuffersG\0\0\6\2\3\0\b-\0\0\0009\0\0\0006\2\1\0-\4\1\0005\5\2\0B\2\3\0A\0\0\1K\0\1\0\1¿\2¿\1\0\1\rcwd_only\2\nmerge\roldfiles \5\1\0\t\0%\0G6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\a\3B\1\2\0019\1\b\0'\3\t\0B\1\2\0019\1\b\0'\3\5\0B\1\2\0016\1\0\0'\3\n\0B\1\2\0025\2\v\0005\3\f\0=\3\r\0025\3\14\0005\4\15\0=\4\r\0036\4\16\0'\6\17\0'\a\18\0003\b\19\0B\4\4\0016\4\16\0'\6\17\0'\a\20\0003\b\21\0B\4\4\0016\4\16\0'\6\17\0'\a\22\0003\b\23\0B\4\4\0016\4\16\0'\6\17\0'\a\24\0003\b\25\0B\4\4\0016\4\16\0'\6\17\0'\a\26\0003\b\27\0B\4\4\0016\4\16\0'\6\17\0'\a\28\0003\b\29\0B\4\4\0016\4\16\0'\6\17\0'\a\30\0003\b\31\0B\4\4\0016\4\16\0'\6\17\0'\a \0003\b!\0B\4\4\0016\4\"\0'\6#\0005\a$\0B\4\3\0012\0\0ÄK\0\1\0\1\0\1\nguibg\tnone\20TelescopeNormal\ahi\0\agh\0\agb\0\agO\0\ago\0\agC\0\agc\0\agF\0\agf\6n\bmap\1\0\2\vheight\4Õô≥Ê\fÃô≥ˇ\3\nwidth\4Õô≥Ê\fÃô≥ˇ\3\1\0\1\20layout_strategy\rvertical\18layout_config\1\0\4\18preview_width\4ö≥ÊÃ\tô≥Ê˛\3\nwidth\4Õô≥Ê\fÃô≥ˇ\3\vheight\4Õô≥Ê\fÃô≥ˇ\3\vmirror\1\1\0\1\20layout_strategy\15horizontal\22telescope.builtin\19live_grep_args\19load_extension\15extensions\1\0\0\bfzf\1\0\0\1\0\4\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\në\6\0\0\6\0%\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\15\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0004\5\0\0=\5\t\0044\5\0\0=\5\n\4=\4\v\0034\4\0\0=\4\f\0035\4\r\0=\4\14\3=\3\16\0025\3\18\0005\4\17\0=\4\19\0034\4\3\0005\5\20\0>\5\1\4=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3=\3\28\0025\3\29\0004\4\0\0=\4\19\0034\4\0\0=\4\21\0035\4\30\0=\4\31\0035\4 \0=\4\23\0034\4\0\0=\4\25\0034\4\0\0=\4\27\3=\3!\0024\3\0\0=\3\"\0024\3\0\0=\3\n\0024\3\0\0=\3#\0024\3\0\0=\3$\2B\0\2\1K\0\1\0\15extensions\20inactive_winbar\ftabline\22inactive_sections\1\2\0\0\rlocation\14lualine_c\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_b\1\2\1\0\rfilename\tpath\3\1\14lualine_a\1\0\0\1\4\0\0\vbranch\tdiff\16diagnostics\foptions\1\0\0\frefresh\1\0\3\vwinbar\3Ë\a\ftabline\3Ë\a\15statusline\3Ë\a\17ignore_focus\23disabled_filetypes\vwinbar\15statusline\1\0\0\23section_separators\1\0\2\nright\bÓÇ≤\tleft\bÓÇ∞\25component_separators\1\0\2\nright\bÓÇ≥\tleft\bÓÇ±\1\0\4\17globalstatus\1\25always_divide_middle\2\ntheme\tauto\18icons_enabled\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-ts-autotag
time([[Config for nvim-ts-autotag]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0", "config", "nvim-ts-autotag")
time([[Config for nvim-ts-autotag]], false)
-- Config for: codi.vim
time([[Config for codi.vim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28cnoreabbrev Eval Codi!!\bcmd\0", "config", "codi.vim")
time([[Config for codi.vim]], false)
-- Config for: vim-commentary
time([[Config for vim-commentary]], true)
try_loadstring("\27LJ\2\nÿ\1\0\0\3\0\6\0\0176\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\1K\0\1\0$nmap <leader>c <Plug>Commentary$omap <leader>c <Plug>Commentary$xmap <leader>c <Plug>Commentary)nmap <leader>cc <Plug>CommentaryLine\bcmd\bvim\0", "config", "vim-commentary")
time([[Config for vim-commentary]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\nY\0\0\4\0\4\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0+\2\0\0005\3\3\0B\0\3\1K\0\1\0\1\0\2\tmode\15foreground\nnames\1\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: vim-test
time([[Config for vim-test]], true)
try_loadstring("\27LJ\2\n¯\3\0\0\6\0\22\0-6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\16\0'\4\17\0005\5\18\0B\0\5\0016\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\19\0'\4\20\0005\5\21\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\23<cmd>TestVisit<CR>\15<leader>tv\1\0\2\vsilent\2\fnoremap\2\22<cmd>TestLast<CR>\15<leader>tl\1\0\2\vsilent\2\fnoremap\2\23<cmd>TestSuite<CR>\15<leader>ts\1\0\2\vsilent\2\fnoremap\2\22<cmd>TestFile<CR>\15<leader>tf\1\0\2\vsilent\2\fnoremap\2\25<cmd>TestNearest<CR>\15<leader>tn\6n\20nvim_set_keymap\bapi\29asyncrun_background_term\18test#strategy\6g\bvim\0", "config", "vim-test")
time([[Config for vim-test]], false)
-- Config for: vim-subversive
time([[Config for vim-subversive]], true)
try_loadstring("\27LJ\2\nÀ\2\0\0\5\0\6\0\v6\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\0016\0\0\0'\2\1\0'\3\4\0'\4\5\0B\0\4\1K\0\1\0ç\1:<c-u>call subversive#singleMotion#substituteLineSetup(v:register, v:count)<cr>:set opfunc=subversive#singleMotion#substituteLine<cr>g@l\ammÜ\1:<c-u>call subversive#singleMotion#preSubstitute(v:register, 0, '')<cr>:set opfunc=subversive#singleMotion#substituteMotion<cr>g@\6m\6n\bmap\0", "config", "vim-subversive")
time([[Config for vim-subversive]], false)
-- Config for: quick-scope
time([[Config for quick-scope]], true)
try_loadstring("\27LJ\2\n:\0\0\2\0\3\0\0046\0\0\0005\1\2\0=\1\1\0K\0\1\0\1\5\0\0\6f\6F\6t\6T\25qs_highlight_on_keys\6g\0", "config", "quick-scope")
time([[Config for quick-scope]], false)
-- Config for: Navigator.nvim
time([[Config for Navigator.nvim]], true)
try_loadstring("\27LJ\2\nÒ\2\0\0\5\0\14\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0'\2\5\0'\3\6\0'\4\a\0B\0\4\0016\0\4\0'\2\5\0'\3\b\0'\4\t\0B\0\4\0016\0\4\0'\2\5\0'\3\n\0'\4\v\0B\0\4\0016\0\4\0'\2\5\0'\3\f\0'\4\r\0B\0\4\1K\0\1\0.<CMD>lua require('Navigator').right()<CR>\n<c-l>+<CMD>lua require('Navigator').up()<CR>\n<c-k>-<CMD>lua require('Navigator').down()<CR>\n<c-j>-<CMD>lua require('Navigator').left()<CR>\n<c-h>\5\bmap\1\0\2\20disable_on_zoom\1\14auto_save\fcurrent\nsetup\14Navigator\frequire\0", "config", "Navigator.nvim")
time([[Config for Navigator.nvim]], false)
-- Config for: vim-startify
time([[Config for vim-startify]], true)
try_loadstring("\27LJ\2\nú\2\0\0\a\0\v\0\0236\0\0\0004\1\3\0005\2\2\0004\3\3\0'\4\3\0006\5\4\0009\5\5\5B\5\1\2&\4\5\4>\4\1\3=\3\6\2>\2\1\1=\1\1\0006\0\0\0)\1\1\0=\1\a\0006\0\0\0)\1\1\0=\1\b\0006\0\0\0005\1\n\0=\1\t\0K\0\1\0\1\17\0\0\6a\6r\6s\6t\6n\6e\6o\6i\3\1\3\2\3\3\3\4\3\a\3\b\3\t\3\0\28startify_custom_indices\28startify_enable_special startify_change_to_vcs_root\vheader\vgetcwd\afn\31 Most recently updated in \1\0\1\ttype\bdir\19startify_lists\6g\0", "config", "vim-startify")
time([[Config for vim-startify]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nÉ\5\0\0\a\0\28\0%6\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\0016\0\4\0'\1\6\0=\1\5\0006\0\4\0)\1\30\0=\1\a\0006\0\4\0)\1\1\0=\1\b\0006\0\t\0'\2\n\0B\0\2\0029\0\v\0005\2\f\0005\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0005\4\19\0005\5\18\0=\5\20\0045\5\21\0005\6\22\0=\6\14\0055\6\23\0=\6\24\5=\5\25\4=\4\26\3=\3\27\2B\0\2\1K\0\1\0\rrenderer\nicons\vglyphs\vfolder\1\0\2\fdefault\bÓóø\topen\bÓóæ\1\0\5\14untracked\b‚òÖ\runmerged\bÓúß\vstaged\b‚úì\runstaged\b‚úó\frenamed\b‚ûú\1\0\2\fdefault\bÓòí\fsymlink\bÔíÅ\tshow\1\0\0\1\0\3\tfile\2\vfolder\2\bgit\2\1\0\1\18highlight_git\2\ffilters\1\0\1\rdotfiles\1\bgit\1\0\1\vignore\1\1\0\2\18disable_netrw\1\18open_on_setup\2\nsetup\14nvim-tree\frequire\27nvim_tree_allow_resize\20nvim_tree_width\tleft\19nvim_tree_side\6gÉ\1:lua if ft() == 'NvimTree' or ft() == 'startify' then vim.cmd('NvimTreeToggle') else vim.cmd('NvimTreeFindFileToggle') end<cr>\n<c-n>\6n\bmap\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: rest.nvim
time([[Config for rest.nvim]], true)
try_loadstring("\27LJ\2\n®\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\2\fenabled\2\ftimeout\3ñ\1\1\0\3\28result_split_horizontal\1\20jump_to_request\1\26skip_ssl_verification\1\nsetup\14rest-nvim\frequire\0", "config", "rest.nvim")
time([[Config for rest.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)


_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
