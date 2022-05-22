-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

  _G._packer = _G._packer or {}
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
  ["Navigator.nvim"] = {
    config = { "\27LJ\2\nÒ\2\0\0\5\0\14\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0'\2\5\0'\3\6\0'\4\a\0B\0\4\0016\0\4\0'\2\5\0'\3\b\0'\4\t\0B\0\4\0016\0\4\0'\2\5\0'\3\n\0'\4\v\0B\0\4\0016\0\4\0'\2\5\0'\3\f\0'\4\r\0B\0\4\1K\0\1\0.<CMD>lua require('Navigator').right()<CR>\n<c-l>+<CMD>lua require('Navigator').up()<CR>\n<c-k>-<CMD>lua require('Navigator').down()<CR>\n<c-j>-<CMD>lua require('Navigator').left()<CR>\n<c-h>\5\bmap\1\0\2\14auto_save\fcurrent\20disable_on_zoom\1\nsetup\14Navigator\frequire\0" },
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
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-look"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/cmp-look",
    url = "https://github.com/octaltree/cmp-look"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
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
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n\17\0\0\1\0\1\0\2'\0\0\0L\0\2\0\6 X\0\0\5\0\5\1\0146\0\0\0009\0\1\0006\2\2\0009\2\0\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\b\0\0\0X\0\2Ä+\0\2\0L\0\2\0+\0\1\0L\0\2\0\b%:t\vexpand\bvim\nempty\afn\2G\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\1\1\0\0X\1\2Ä+\1\2\0L\1\2\0+\1\1\0L\1\2\0\rwinwidth\afn\bvimW\0\0\3\0\4\0\a5\0\0\0006\1\1\0009\1\2\0019\1\3\1B\1\1\0028\1\1\0L\1\2\0\tmode\afn\bvim\1\0\4\6n\vNORMAL\6V\vVISUAL\6i\vINSERT\6c\fCOMMAND˜\1\0\0\a\1\r\0*'\0\0\0006\1\1\0009\1\2\0019\1\3\1\15\0\1\0X\2\3Ä\18\1\0\0'\2\4\0&\0\2\1-\1\0\0B\1\1\2\15\0\1\0X\2\rÄ\18\1\0\0006\2\1\0009\2\5\0029\2\6\0026\4\1\0009\4\5\0049\4\a\4'\6\b\0B\4\2\2'\5\t\0B\2\3\2&\0\2\1X\1\aÄ\18\1\0\0006\2\1\0009\2\5\0029\2\a\2'\4\n\0B\2\2\2&\0\2\0016\1\1\0009\1\2\0019\1\v\1\15\0\1\0X\2\3Ä\18\1\0\0'\2\f\0&\0\2\1L\0\2\0\5¿\n üñç\rmodified\b%:t\t:~:.\6%\vexpand\16fnamemodify\afn\tüîí\rreadonly\abo\bvim\5\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\tÔû£ ´\f\1\0\r\0D\0ã\0015\0\0\0006\1\1\0'\3\2\0B\1\2\0029\2\3\0015\3\5\0=\3\4\0015\3\f\0005\4\a\0003\5\6\0=\5\b\0044\5\3\0009\6\t\0>\6\1\0059\6\n\0>\6\2\5=\5\v\4=\4\r\0033\4\14\0003\5\15\0004\6\5\0005\a\21\0005\b\18\0003\t\17\0=\t\b\b4\t\3\0009\n\19\0>\n\1\t9\n\20\0>\n\2\t=\t\v\b=\b\22\a>\a\1\6>\3\2\0065\a\27\0005\b\23\0004\t\3\0006\n\1\0'\f\24\0B\n\2\0029\n\25\n>\n\1\t9\n\26\0>\n\2\t=\t\v\b=\b\28\a>\a\3\0065\a\"\0005\b\30\0003\t\29\0=\t\b\b=\4\31\b4\t\3\0009\n \0>\n\1\t9\n!\0>\n\2\t=\t\v\b=\b#\a>\a\4\6=\6\16\0024\6\0\0=\6$\0024\6\a\0005\a)\0005\b&\0004\t\3\0009\n'\0>\n\1\t9\n(\0>\n\2\t=\t\v\b=\b*\a>\a\1\0065\a.\0005\b+\0004\t\3\0009\n,\0>\n\1\t9\n-\0>\n\2\t=\t\v\b=\b/\a>\a\2\0065\a3\0005\b0\0004\t\3\0009\n1\0>\n\1\t9\n2\0>\n\2\t=\t\v\b=\b4\a>\a\3\0065\a6\0005\b5\0004\t\3\0009\n1\0>\n\1\t9\n2\0>\n\2\t=\t\v\b=\b7\a>\a\4\0065\a>\0005\b9\0003\t8\0=\t\b\b6\t\1\0'\v:\0B\t\2\0029\t;\t=\t\31\b4\t\3\0009\n<\0>\n\1\t9\n=\0>\n\2\t=\t\v\b=\b?\a>\a\5\0065\aB\0005\b@\0006\t\1\0'\v:\0B\t\2\0029\t;\t=\t\31\b5\tA\0009\n<\0>\n\1\t9\n=\0>\n\2\t=\t\v\b=\bC\a>\a\6\6=\6%\0022\0\0ÄK\0\1\0\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\ngitBg\ngitFg\24check_git_workspace\28galaxyline.provider_vcs\1\0\0\0\19DiagnosticInfo\1\0\0\1\0\2\rprovider\19DiagnosticInfo\ticon\tÔÇ≠ \19DiagnosticHint\1\0\0\vhintBg\vhintFg\1\0\2\rprovider\19DiagnosticHint\ticon\tÔÉ´ \19DiagnosticWarn\1\0\0\14warningBg\14warningFg\1\0\2\rprovider\19DiagnosticWarn\ticon\tÔÅ± \20DiagnosticError\1\0\0\ferrorBg\ferrorFg\1\0\2\rprovider\20DiagnosticError\ticon\tÔÅó \nright\bmid\rFilePath\1\0\0\15filepathBg\15filepathFg\14condition\1\0\0\0\rFileIcon\1\0\0\15fileiconBg\24get_file_icon_color!galaxyline.provider_fileinfo\1\0\1\rprovider\rFileIcon\vViMode\1\0\0\vmodeBg\vmodeFg\1\0\0\0\tleft\0\0\nSpace\1\0\0\14highlight\fspaceBg\fspaceFg\rprovider\1\0\0\0\1\n\0\0\fLuaTree\nvista\tdbui\rstartify\tterm\rnerdtree\rfugitive\18fugitiveblame\tplug\20short_line_list\fsection\15galaxyline\frequire\1\0\19\vlineFg\f#78dce8\vlineBg\tnone\ngitFg\f#78dce8\ngitBg\tnone\vinfoFg\f#7f8490\vinfoBg\tnone\vhintFg\f#7f8490\vhintBg\tnone\14warningFg\f#e7c664\14warningBg\tnone\ferrorFg\f#fc5d7c\ferrorBg\tnone\15filepathFg\f#e5c463\15filepathBg\tnone\15fileiconBg\tnone\vmodeFg\f#9ecd6f\vmodeBg\tnone\fspaceFg\tnone\fspaceBg\tnone\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/galaxyline.nvim",
    url = "https://github.com/glepnir/galaxyline.nvim"
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
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["nest.nvim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/nest.nvim",
    url = "https://github.com/LionC/nest.nvim"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\nC\0\1\4\0\4\0\v6\1\0\0009\1\1\0019\1\2\1\18\3\0\0B\1\2\2\a\1\3\0X\1\2Ä+\1\1\0L\1\2\0+\1\2\0L\1\2\0\5\fbufname\afn\bvimØ\5\1\0\6\0\"\0)6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\4\0=\4\5\0033\4\6\0=\4\a\3=\3\t\0025\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0005\5\22\0=\5\23\4=\4\24\0035\4\25\0=\4\26\3=\3\27\2B\0\2\0016\0\28\0'\2\29\0'\3\30\0'\4\31\0B\0\4\0016\0\28\0'\2\29\0'\3 \0'\4!\0B\0\4\1K\0\1\0\29:BufferLineCyclePrev<cr>\r<S-Down>\29:BufferLineCycleNext<cr>\v<S-Up>\6n\bmap\15highlights\rmodified\1\0\1\nguibg\tnone\23indicator_selected\nguifg\1\0\2\14attribute\abg\14highlight\vNormal\1\0\1\nguibg\tnone\20buffer_selected\1\0\1\nguifg\f#e5c463\14duplicate\1\0\1\nguibg\tnone\btab\1\0\1\nguibg\tnone\15background\1\0\1\nguibg\tnone\tfill\1\0\0\1\0\1\nguibg\tnone\foptions\1\0\0\18custom_filter\0\20separator_style\1\3\0\0\5\5\1\0\b\tview\16multiwindow\22max_prefix_length\3\0\rtab_size\3\25\20max_name_length\3#\18modified_icon\tüñç\20show_close_icon\1\28show_buffer_close_icons\1\fnumbers\tnone\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nè\1\0\0\6\0\a\2\0266\0\0\0009\0\1\0'\2\2\0B\0\2\2\23\0\0\0\b\0\1\0X\1\17Ä6\1\0\0009\1\3\1'\3\2\0B\1\2\2\18\3\1\0009\1\4\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\5\1'\4\6\0B\1\3\2\v\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\2\0;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim\2\0\1\t\1\f\1=6\1\0\0009\1\1\0019\1\2\1B\1\1\2\t\1\0\0X\1\14Ä6\1\0\0009\1\1\0019\1\3\0016\3\0\0009\3\4\0039\3\5\3'\5\6\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\a\0B\1\3\1X\1(Ä6\1\0\0009\1\1\0019\1\b\1B\1\1\2\t\1\0\0X\1\14Ä6\1\0\0009\1\1\0019\1\3\0016\3\0\0009\3\4\0039\3\5\3'\5\t\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\n\0B\1\3\1X\1\20Ä-\1\0\0B\1\1\2\15\0\1\0X\2\14Ä6\1\0\0009\1\1\0019\1\3\0016\3\0\0009\3\4\0039\3\5\3'\5\v\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\n\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\n<Tab>\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\6n\n<C-n>\27nvim_replace_termcodes\bapi\rfeedkeys\15pumvisible\afn\bvim\2õ\2\0\1\t\0\v\1+6\1\0\0009\1\1\0019\1\2\1B\1\1\2\t\1\0\0X\1\14Ä6\1\0\0009\1\1\0019\1\3\0016\3\0\0009\3\4\0039\3\5\3'\5\6\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\a\0B\1\3\1X\1\22Ä6\1\0\0009\1\1\0019\1\b\1B\1\1\2\t\1\0\0X\1\14Ä6\1\0\0009\1\1\0019\1\3\0016\3\0\0009\3\4\0039\3\5\3'\5\t\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\n\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\5\28<Plug>(vsnip-jump-prev)\20vsnip#available\6n\n<C-p>\27nvim_replace_termcodes\bapi\rfeedkeys\15pumvisible\afn\bvim\2ì\a\1\0\f\0004\0T6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0009\3\4\0005\5\a\0009\6\1\0019\6\5\0069\6\6\6=\6\b\0055\6\t\0=\6\n\0055\6\v\0=\6\f\0055\6\14\0003\a\r\0=\a\15\6=\6\16\0054\6\4\0005\a\17\0>\a\1\0065\a\18\0>\a\2\0065\a\19\0>\a\3\6=\6\20\0055\6\23\0009\a\21\0009\a\22\a)\t¸ˇB\a\2\2=\a\24\0069\a\21\0009\a\22\a)\t\4\0B\a\2\2=\a\25\0069\a\21\0009\a\26\a)\t¸ˇB\a\2\2=\a\27\0069\a\21\0009\a\28\a)\t\4\0B\a\2\2=\a\29\0069\a\21\0009\a\30\aB\a\1\2=\a\31\0069\a\21\0009\a \aB\a\1\2=\a!\0069\a\21\0009\a\"\a5\t%\0009\n#\0009\n$\n=\n&\tB\a\2\2=\a'\0063\a(\0=\a)\0063\a*\0=\a+\6=\6\21\5B\3\2\0016\3,\0'\5-\0'\6.\0'\a/\0'\b0\0'\t1\0'\n2\0'\v3\0&\a\v\aB\3\4\0012\0\0ÄK\0\1\0\t } }+{ name = 'look', max_item_count = 10 }\24{ name = 'emoji' },-{ name = 'spell', max_item_count = 10 },1lua require'cmp'.setup.buffer { sources = { \23gitcommit,markdown\rfiletype\aau\f<S-Tab>\0\n<Tab>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-p>\21select_next_item\n<C-n>\21select_prev_item\n<C-f>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsources\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\fsnippet\vexpand\1\0\0\0\17experimental\1\0\1\15ghost_text\2\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\14preselect\1\0\0\tItem\18PreselectMode\nsetup\0\14cmp.types\bcmp\frequire\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-code-action-menu"] = {
    commands = { "CodeActionMenu" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/opt/nvim-code-action-menu",
    url = "https://github.com/weilbith/nvim-code-action-menu"
  },
  ["nvim-spectre"] = {
    config = { "\27LJ\2\n¥\3\0\0\6\0\f\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\6\0'\2\a\0'\3\b\0'\4\t\0004\5\0\0B\0\5\0016\0\6\0'\2\a\0'\3\n\0'\4\v\0004\5\0\0B\0\5\1K\0\1\0+<cmd>lua require(\"spectre\").open()<CR>\14<leader>R1viw:lua require(\"spectre\").open_visual()<CR>\14<leader>r\6n\bmap\14highlight\1\0\3\vsearch\15DiffDelete\freplace\15DiffChange\aui\vString\1\0\4\19result_padding\t¬¶  \19line_sep_start1‚îå-----------------------------------------\19color_devicons\2\rline_sep1‚îî-----------------------------------------\nsetup\fspectre\frequire\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://github.com/windwp/nvim-spectre"
  },
  ["nvim-spotify"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\2K\0\1\0\17nvim-spotify\frequire\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/nvim-spotify",
    url = "https://github.com/KadoBOT/nvim-spotify"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n‚\4\0\0\5\0\22\0\"6\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\0016\0\4\0'\1\6\0=\1\5\0006\0\4\0)\1\30\0=\1\a\0006\0\4\0)\1\1\0=\1\b\0006\0\4\0)\1\1\0=\1\t\0006\0\4\0005\1\v\0=\1\n\0006\0\4\0005\1\r\0005\2\14\0=\2\15\0015\2\16\0=\2\17\1=\1\f\0006\0\18\0'\2\19\0B\0\2\0029\0\20\0005\2\21\0B\0\2\1K\0\1\0\1\0\2\18disable_netrw\1\18open_on_setup\1\nsetup\14nvim-tree\frequire\vfolder\1\0\2\topen\bÓóæ\fdefault\bÓóø\bgit\1\0\5\14untracked\b‚òÖ\runmerged\bÓúß\vstaged\b‚úì\runstaged\b‚úó\frenamed\b‚ûú\1\0\2\fdefault\bÓòí\fsymlink\bÔíÅ\20nvim_tree_icons\1\0\3\bgit\3\1\nfiles\3\1\ffolders\3\1\25nvim_tree_show_icons\27nvim_tree_allow_resize\21nvim_tree_git_hl\20nvim_tree_width\tleft\19nvim_tree_side\6gÉ\1:lua if ft() == 'NvimTree' or ft() == 'startify' then vim.cmd('NvimTreeToggle') else vim.cmd('NvimTreeFindFileToggle') end<cr>\n<c-n>\6n\bmap\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
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
    config = { "\27LJ\2\n®\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\2\ftimeout\3ñ\1\fenabled\2\1\0\3\20jump_to_request\1\26skip_ssl_verification\1\28result_split_horizontal\1\nsetup\14rest-nvim\frequire\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/rest.nvim",
    url = "https://github.com/NTBBloodbath/rest.nvim"
  },
  sonokai = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/sonokai",
    url = "https://github.com/sainnhe/sonokai"
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
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nx\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\25lsp_diagnostic_signs\2\15auto_close\2\tmode\25document_diagnostics\nsetup\ftrouble\frequire\0" },
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
  ["vim-elixir"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-elixir",
    url = "https://github.com/elixir-editors/vim-elixir"
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
  ["vim-hexokinase"] = {
    config = { "\27LJ\2\nL\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\2\0\0\19foregroundfull\28Hexokinase_highlighters\6g\bvim\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-hexokinase",
    url = "https://github.com/rrethy/vim-hexokinase"
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
  ["vim-textobj-elixir"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-textobj-elixir",
    url = "https://github.com/andyl/vim-textobj-elixir"
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
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nx\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\25lsp_diagnostic_signs\2\15auto_close\2\tmode\25document_diagnostics\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: vim-subversive
time([[Config for vim-subversive]], true)
try_loadstring("\27LJ\2\nÀ\2\0\0\5\0\6\0\v6\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\0016\0\0\0'\2\1\0'\3\4\0'\4\5\0B\0\4\1K\0\1\0ç\1:<c-u>call subversive#singleMotion#substituteLineSetup(v:register, v:count)<cr>:set opfunc=subversive#singleMotion#substituteLine<cr>g@l\ammÜ\1:<c-u>call subversive#singleMotion#preSubstitute(v:register, 0, '')<cr>:set opfunc=subversive#singleMotion#substituteMotion<cr>g@\6m\6n\bmap\0", "config", "vim-subversive")
time([[Config for vim-subversive]], false)
-- Config for: vim-bbye
time([[Config for vim-bbye]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27cnoreabbrev bd Bdelete\bcmd\0", "config", "vim-bbye")
time([[Config for vim-bbye]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nè\1\0\0\6\0\a\2\0266\0\0\0009\0\1\0'\2\2\0B\0\2\2\23\0\0\0\b\0\1\0X\1\17Ä6\1\0\0009\1\3\1'\3\2\0B\1\2\2\18\3\1\0009\1\4\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\5\1'\4\6\0B\1\3\2\v\1\0\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\2\0;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim\2\0\1\t\1\f\1=6\1\0\0009\1\1\0019\1\2\1B\1\1\2\t\1\0\0X\1\14Ä6\1\0\0009\1\1\0019\1\3\0016\3\0\0009\3\4\0039\3\5\3'\5\6\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\a\0B\1\3\1X\1(Ä6\1\0\0009\1\1\0019\1\b\1B\1\1\2\t\1\0\0X\1\14Ä6\1\0\0009\1\1\0019\1\3\0016\3\0\0009\3\4\0039\3\5\3'\5\t\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\n\0B\1\3\1X\1\20Ä-\1\0\0B\1\1\2\15\0\1\0X\2\14Ä6\1\0\0009\1\1\0019\1\3\0016\3\0\0009\3\4\0039\3\5\3'\5\v\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\n\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\n<Tab>\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\6n\n<C-n>\27nvim_replace_termcodes\bapi\rfeedkeys\15pumvisible\afn\bvim\2õ\2\0\1\t\0\v\1+6\1\0\0009\1\1\0019\1\2\1B\1\1\2\t\1\0\0X\1\14Ä6\1\0\0009\1\1\0019\1\3\0016\3\0\0009\3\4\0039\3\5\3'\5\6\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\a\0B\1\3\1X\1\22Ä6\1\0\0009\1\1\0019\1\b\1B\1\1\2\t\1\0\0X\1\14Ä6\1\0\0009\1\1\0019\1\3\0016\3\0\0009\3\4\0039\3\5\3'\5\t\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\n\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\5\28<Plug>(vsnip-jump-prev)\20vsnip#available\6n\n<C-p>\27nvim_replace_termcodes\bapi\rfeedkeys\15pumvisible\afn\bvim\2ì\a\1\0\f\0004\0T6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0009\3\4\0005\5\a\0009\6\1\0019\6\5\0069\6\6\6=\6\b\0055\6\t\0=\6\n\0055\6\v\0=\6\f\0055\6\14\0003\a\r\0=\a\15\6=\6\16\0054\6\4\0005\a\17\0>\a\1\0065\a\18\0>\a\2\0065\a\19\0>\a\3\6=\6\20\0055\6\23\0009\a\21\0009\a\22\a)\t¸ˇB\a\2\2=\a\24\0069\a\21\0009\a\22\a)\t\4\0B\a\2\2=\a\25\0069\a\21\0009\a\26\a)\t¸ˇB\a\2\2=\a\27\0069\a\21\0009\a\28\a)\t\4\0B\a\2\2=\a\29\0069\a\21\0009\a\30\aB\a\1\2=\a\31\0069\a\21\0009\a \aB\a\1\2=\a!\0069\a\21\0009\a\"\a5\t%\0009\n#\0009\n$\n=\n&\tB\a\2\2=\a'\0063\a(\0=\a)\0063\a*\0=\a+\6=\6\21\5B\3\2\0016\3,\0'\5-\0'\6.\0'\a/\0'\b0\0'\t1\0'\n2\0'\v3\0&\a\v\aB\3\4\0012\0\0ÄK\0\1\0\t } }+{ name = 'look', max_item_count = 10 }\24{ name = 'emoji' },-{ name = 'spell', max_item_count = 10 },1lua require'cmp'.setup.buffer { sources = { \23gitcommit,markdown\rfiletype\aau\f<S-Tab>\0\n<Tab>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-p>\21select_next_item\n<C-n>\21select_prev_item\n<C-f>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsources\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\fsnippet\vexpand\1\0\0\0\17experimental\1\0\1\15ghost_text\2\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\14preselect\1\0\0\tItem\18PreselectMode\nsetup\0\14cmp.types\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: quick-scope
time([[Config for quick-scope]], true)
try_loadstring("\27LJ\2\n:\0\0\2\0\3\0\0046\0\0\0005\1\2\0=\1\1\0K\0\1\0\1\5\0\0\6f\6F\6t\6T\25qs_highlight_on_keys\6g\0", "config", "quick-scope")
time([[Config for quick-scope]], false)
-- Config for: codi.vim
time([[Config for codi.vim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28cnoreabbrev Eval Codi!!\bcmd\0", "config", "codi.vim")
time([[Config for codi.vim]], false)
-- Config for: vim-hexokinase
time([[Config for vim-hexokinase]], true)
try_loadstring("\27LJ\2\nL\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\2\0\0\19foregroundfull\28Hexokinase_highlighters\6g\bvim\0", "config", "vim-hexokinase")
time([[Config for vim-hexokinase]], false)
-- Config for: vim-fugitive
time([[Config for vim-fugitive]], true)
try_loadstring("\27LJ\2\nˆ\1\0\0\5\0\v\0\0236\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0016\0\5\0'\2\6\0'\3\a\0'\4\b\0B\0\4\0016\0\5\0'\2\6\0'\3\t\0'\4\n\0B\0\4\1K\0\1\0\21:diffget //3<cr>\agt\21:diffget //2<cr>\agm\6n\bmap\22cnoreabbrev gs Gs\26command! Gs :Git | on%cnoreabbrev gpf Git push --force\28cnoreabbrev gp Git push\bcmd\0", "config", "vim-fugitive")
time([[Config for vim-fugitive]], false)
-- Config for: nvim-spotify
time([[Config for nvim-spotify]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\2K\0\1\0\17nvim-spotify\frequire\0", "config", "nvim-spotify")
time([[Config for nvim-spotify]], false)
-- Config for: vim-commentary
time([[Config for vim-commentary]], true)
try_loadstring("\27LJ\2\nÿ\1\0\0\3\0\6\0\0176\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\1K\0\1\0$nmap <leader>c <Plug>Commentary$omap <leader>c <Plug>Commentary$xmap <leader>c <Plug>Commentary)nmap <leader>cc <Plug>CommentaryLine\bcmd\bvim\0", "config", "vim-commentary")
time([[Config for vim-commentary]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\nC\0\1\4\0\4\0\v6\1\0\0009\1\1\0019\1\2\1\18\3\0\0B\1\2\2\a\1\3\0X\1\2Ä+\1\1\0L\1\2\0+\1\2\0L\1\2\0\5\fbufname\afn\bvimØ\5\1\0\6\0\"\0)6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\4\0=\4\5\0033\4\6\0=\4\a\3=\3\t\0025\3\v\0005\4\n\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0005\5\22\0=\5\23\4=\4\24\0035\4\25\0=\4\26\3=\3\27\2B\0\2\0016\0\28\0'\2\29\0'\3\30\0'\4\31\0B\0\4\0016\0\28\0'\2\29\0'\3 \0'\4!\0B\0\4\1K\0\1\0\29:BufferLineCyclePrev<cr>\r<S-Down>\29:BufferLineCycleNext<cr>\v<S-Up>\6n\bmap\15highlights\rmodified\1\0\1\nguibg\tnone\23indicator_selected\nguifg\1\0\2\14attribute\abg\14highlight\vNormal\1\0\1\nguibg\tnone\20buffer_selected\1\0\1\nguifg\f#e5c463\14duplicate\1\0\1\nguibg\tnone\btab\1\0\1\nguibg\tnone\15background\1\0\1\nguibg\tnone\tfill\1\0\0\1\0\1\nguibg\tnone\foptions\1\0\0\18custom_filter\0\20separator_style\1\3\0\0\5\5\1\0\b\tview\16multiwindow\22max_prefix_length\3\0\rtab_size\3\25\20max_name_length\3#\18modified_icon\tüñç\20show_close_icon\1\28show_buffer_close_icons\1\fnumbers\tnone\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: nvim-spectre
time([[Config for nvim-spectre]], true)
try_loadstring("\27LJ\2\n¥\3\0\0\6\0\f\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\6\0'\2\a\0'\3\b\0'\4\t\0004\5\0\0B\0\5\0016\0\6\0'\2\a\0'\3\n\0'\4\v\0004\5\0\0B\0\5\1K\0\1\0+<cmd>lua require(\"spectre\").open()<CR>\14<leader>R1viw:lua require(\"spectre\").open_visual()<CR>\14<leader>r\6n\bmap\14highlight\1\0\3\vsearch\15DiffDelete\freplace\15DiffChange\aui\vString\1\0\4\19result_padding\t¬¶  \19line_sep_start1‚îå-----------------------------------------\19color_devicons\2\rline_sep1‚îî-----------------------------------------\nsetup\fspectre\frequire\0", "config", "nvim-spectre")
time([[Config for nvim-spectre]], false)
-- Config for: rest.nvim
time([[Config for rest.nvim]], true)
try_loadstring("\27LJ\2\n®\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\2\ftimeout\3ñ\1\fenabled\2\1\0\3\20jump_to_request\1\26skip_ssl_verification\1\28result_split_horizontal\1\nsetup\14rest-nvim\frequire\0", "config", "rest.nvim")
time([[Config for rest.nvim]], false)
-- Config for: vim-terraform
time([[Config for vim-terraform]], true)
try_loadstring("\27LJ\2\nS\0\0\2\0\3\0\a6\0\0\0)\1\1\0=\1\1\0006\0\0\0)\1\1\0=\1\2\0K\0\1\0\26terraform_fmt_on_save\28terraform_fold_sections\6g\0", "config", "vim-terraform")
time([[Config for vim-terraform]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\n\17\0\0\1\0\1\0\2'\0\0\0L\0\2\0\6 X\0\0\5\0\5\1\0146\0\0\0009\0\1\0006\2\2\0009\2\0\0029\2\3\2'\4\4\0B\2\2\0A\0\0\2\b\0\0\0X\0\2Ä+\0\2\0L\0\2\0+\0\1\0L\0\2\0\b%:t\vexpand\bvim\nempty\afn\2G\0\0\3\0\3\0\f6\0\0\0009\0\1\0009\0\2\0)\2\0\0B\0\2\2)\1P\0\1\1\0\0X\1\2Ä+\1\2\0L\1\2\0+\1\1\0L\1\2\0\rwinwidth\afn\bvimW\0\0\3\0\4\0\a5\0\0\0006\1\1\0009\1\2\0019\1\3\1B\1\1\0028\1\1\0L\1\2\0\tmode\afn\bvim\1\0\4\6n\vNORMAL\6V\vVISUAL\6i\vINSERT\6c\fCOMMAND˜\1\0\0\a\1\r\0*'\0\0\0006\1\1\0009\1\2\0019\1\3\1\15\0\1\0X\2\3Ä\18\1\0\0'\2\4\0&\0\2\1-\1\0\0B\1\1\2\15\0\1\0X\2\rÄ\18\1\0\0006\2\1\0009\2\5\0029\2\6\0026\4\1\0009\4\5\0049\4\a\4'\6\b\0B\4\2\2'\5\t\0B\2\3\2&\0\2\1X\1\aÄ\18\1\0\0006\2\1\0009\2\5\0029\2\a\2'\4\n\0B\2\2\2&\0\2\0016\1\1\0009\1\2\0019\1\v\1\15\0\1\0X\2\3Ä\18\1\0\0'\2\f\0&\0\2\1L\0\2\0\5¿\n üñç\rmodified\b%:t\t:~:.\6%\vexpand\16fnamemodify\afn\tüîí\rreadonly\abo\bvim\5\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\tÔû£ ´\f\1\0\r\0D\0ã\0015\0\0\0006\1\1\0'\3\2\0B\1\2\0029\2\3\0015\3\5\0=\3\4\0015\3\f\0005\4\a\0003\5\6\0=\5\b\0044\5\3\0009\6\t\0>\6\1\0059\6\n\0>\6\2\5=\5\v\4=\4\r\0033\4\14\0003\5\15\0004\6\5\0005\a\21\0005\b\18\0003\t\17\0=\t\b\b4\t\3\0009\n\19\0>\n\1\t9\n\20\0>\n\2\t=\t\v\b=\b\22\a>\a\1\6>\3\2\0065\a\27\0005\b\23\0004\t\3\0006\n\1\0'\f\24\0B\n\2\0029\n\25\n>\n\1\t9\n\26\0>\n\2\t=\t\v\b=\b\28\a>\a\3\0065\a\"\0005\b\30\0003\t\29\0=\t\b\b=\4\31\b4\t\3\0009\n \0>\n\1\t9\n!\0>\n\2\t=\t\v\b=\b#\a>\a\4\6=\6\16\0024\6\0\0=\6$\0024\6\a\0005\a)\0005\b&\0004\t\3\0009\n'\0>\n\1\t9\n(\0>\n\2\t=\t\v\b=\b*\a>\a\1\0065\a.\0005\b+\0004\t\3\0009\n,\0>\n\1\t9\n-\0>\n\2\t=\t\v\b=\b/\a>\a\2\0065\a3\0005\b0\0004\t\3\0009\n1\0>\n\1\t9\n2\0>\n\2\t=\t\v\b=\b4\a>\a\3\0065\a6\0005\b5\0004\t\3\0009\n1\0>\n\1\t9\n2\0>\n\2\t=\t\v\b=\b7\a>\a\4\0065\a>\0005\b9\0003\t8\0=\t\b\b6\t\1\0'\v:\0B\t\2\0029\t;\t=\t\31\b4\t\3\0009\n<\0>\n\1\t9\n=\0>\n\2\t=\t\v\b=\b?\a>\a\5\0065\aB\0005\b@\0006\t\1\0'\v:\0B\t\2\0029\t;\t=\t\31\b5\tA\0009\n<\0>\n\1\t9\n=\0>\n\2\t=\t\v\b=\bC\a>\a\6\6=\6%\0022\0\0ÄK\0\1\0\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\ngitBg\ngitFg\24check_git_workspace\28galaxyline.provider_vcs\1\0\0\0\19DiagnosticInfo\1\0\0\1\0\2\rprovider\19DiagnosticInfo\ticon\tÔÇ≠ \19DiagnosticHint\1\0\0\vhintBg\vhintFg\1\0\2\rprovider\19DiagnosticHint\ticon\tÔÉ´ \19DiagnosticWarn\1\0\0\14warningBg\14warningFg\1\0\2\rprovider\19DiagnosticWarn\ticon\tÔÅ± \20DiagnosticError\1\0\0\ferrorBg\ferrorFg\1\0\2\rprovider\20DiagnosticError\ticon\tÔÅó \nright\bmid\rFilePath\1\0\0\15filepathBg\15filepathFg\14condition\1\0\0\0\rFileIcon\1\0\0\15fileiconBg\24get_file_icon_color!galaxyline.provider_fileinfo\1\0\1\rprovider\rFileIcon\vViMode\1\0\0\vmodeBg\vmodeFg\1\0\0\0\tleft\0\0\nSpace\1\0\0\14highlight\fspaceBg\fspaceFg\rprovider\1\0\0\0\1\n\0\0\fLuaTree\nvista\tdbui\rstartify\tterm\rnerdtree\rfugitive\18fugitiveblame\tplug\20short_line_list\fsection\15galaxyline\frequire\1\0\19\vlineFg\f#78dce8\vlineBg\tnone\ngitFg\f#78dce8\ngitBg\tnone\vinfoFg\f#7f8490\vinfoBg\tnone\vhintFg\f#7f8490\vhintBg\tnone\14warningFg\f#e7c664\14warningBg\tnone\ferrorFg\f#fc5d7c\ferrorBg\tnone\15filepathFg\f#e5c463\15filepathBg\tnone\15fileiconBg\tnone\vmodeFg\f#9ecd6f\vmodeBg\tnone\fspaceFg\tnone\fspaceBg\tnone\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: splitjoin.vim
time([[Config for splitjoin.vim]], true)
try_loadstring("\27LJ\2\nf\0\0\5\0\6\0\v6\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\0016\0\0\0'\2\1\0'\3\4\0'\4\5\0B\0\4\1K\0\1\0\24:SplitjoinSplit<cr>\ags\23:SplitjoinJoin<cr>\agj\6n\bmap\0", "config", "splitjoin.vim")
time([[Config for splitjoin.vim]], false)
-- Config for: vim-bufonly
time([[Config for vim-bufonly]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25cnoreabbrev bo Bonly\bcmd\0", "config", "vim-bufonly")
time([[Config for vim-bufonly]], false)
-- Config for: vim-test
time([[Config for vim-test]], true)
try_loadstring("\27LJ\2\n¯\3\0\0\6\0\22\0-6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\0016\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\n\0'\4\v\0005\5\f\0B\0\5\0016\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\r\0'\4\14\0005\5\15\0B\0\5\0016\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\16\0'\4\17\0005\5\18\0B\0\5\0016\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\19\0'\4\20\0005\5\21\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\23<cmd>TestVisit<CR>\15<leader>tv\1\0\2\vsilent\2\fnoremap\2\22<cmd>TestLast<CR>\15<leader>tl\1\0\2\vsilent\2\fnoremap\2\23<cmd>TestSuite<CR>\15<leader>ts\1\0\2\vsilent\2\fnoremap\2\22<cmd>TestFile<CR>\15<leader>tf\1\0\2\vsilent\2\fnoremap\2\25<cmd>TestNearest<CR>\15<leader>tn\6n\20nvim_set_keymap\bapi\29asyncrun_background_term\18test#strategy\6g\bvim\0", "config", "vim-test")
time([[Config for vim-test]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n‚\4\0\0\5\0\22\0\"6\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\0016\0\4\0'\1\6\0=\1\5\0006\0\4\0)\1\30\0=\1\a\0006\0\4\0)\1\1\0=\1\b\0006\0\4\0)\1\1\0=\1\t\0006\0\4\0005\1\v\0=\1\n\0006\0\4\0005\1\r\0005\2\14\0=\2\15\0015\2\16\0=\2\17\1=\1\f\0006\0\18\0'\2\19\0B\0\2\0029\0\20\0005\2\21\0B\0\2\1K\0\1\0\1\0\2\18disable_netrw\1\18open_on_setup\1\nsetup\14nvim-tree\frequire\vfolder\1\0\2\topen\bÓóæ\fdefault\bÓóø\bgit\1\0\5\14untracked\b‚òÖ\runmerged\bÓúß\vstaged\b‚úì\runstaged\b‚úó\frenamed\b‚ûú\1\0\2\fdefault\bÓòí\fsymlink\bÔíÅ\20nvim_tree_icons\1\0\3\bgit\3\1\nfiles\3\1\ffolders\3\1\25nvim_tree_show_icons\27nvim_tree_allow_resize\21nvim_tree_git_hl\20nvim_tree_width\tleft\19nvim_tree_side\6gÉ\1:lua if ft() == 'NvimTree' or ft() == 'startify' then vim.cmd('NvimTreeToggle') else vim.cmd('NvimTreeFindFileToggle') end<cr>\n<c-n>\6n\bmap\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: vim-dadbod-ui
time([[Config for vim-dadbod-ui]], true)
try_loadstring("\27LJ\2\nê\1\0\0\2\0\5\0\r6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0K\0\1\0\25db_ui_use_nerd_fonts\29db_ui_show_database_icon%db_ui_auto_execute_table_helpers\6g\bvim\0", "config", "vim-dadbod-ui")
time([[Config for vim-dadbod-ui]], false)
-- Config for: Navigator.nvim
time([[Config for Navigator.nvim]], true)
try_loadstring("\27LJ\2\nÒ\2\0\0\5\0\14\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0'\2\5\0'\3\6\0'\4\a\0B\0\4\0016\0\4\0'\2\5\0'\3\b\0'\4\t\0B\0\4\0016\0\4\0'\2\5\0'\3\n\0'\4\v\0B\0\4\0016\0\4\0'\2\5\0'\3\f\0'\4\r\0B\0\4\1K\0\1\0.<CMD>lua require('Navigator').right()<CR>\n<c-l>+<CMD>lua require('Navigator').up()<CR>\n<c-k>-<CMD>lua require('Navigator').down()<CR>\n<c-j>-<CMD>lua require('Navigator').left()<CR>\n<c-h>\5\bmap\1\0\2\14auto_save\fcurrent\20disable_on_zoom\1\nsetup\14Navigator\frequire\0", "config", "Navigator.nvim")
time([[Config for Navigator.nvim]], false)
-- Config for: sonokai
time([[Config for sonokai]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "sonokai")
time([[Config for sonokai]], false)
-- Config for: vim-startify
time([[Config for vim-startify]], true)
try_loadstring("\27LJ\2\nú\2\0\0\a\0\v\0\0236\0\0\0004\1\3\0005\2\2\0004\3\3\0'\4\3\0006\5\4\0009\5\5\5B\5\1\2&\4\5\4>\4\1\3=\3\6\2>\2\1\1=\1\1\0006\0\0\0)\1\1\0=\1\a\0006\0\0\0)\1\1\0=\1\b\0006\0\0\0005\1\n\0=\1\t\0K\0\1\0\1\17\0\0\6a\6r\6s\6t\6n\6e\6o\6i\3\1\3\2\3\3\3\4\3\a\3\b\3\t\3\0\28startify_custom_indices\28startify_enable_special startify_change_to_vcs_root\vheader\vgetcwd\afn\31 Most recently updated in \1\0\1\ttype\bdir\19startify_lists\6g\0", "config", "vim-startify")
time([[Config for vim-startify]], false)
-- Config for: vim-dotenv
time([[Config for vim-dotenv]], true)
try_loadstring("\27LJ\2\nç\1\0\0\5\0\a\0\v6\0\0\0'\2\1\0'\3\2\0'\4\3\0B\0\4\0016\0\0\0'\2\4\0'\3\5\0'\4\6\0B\0\4\1K\0\1\0\16Dotenv .env\t.env\17BufWritePost2if !empty(glob('.env')) | Dotenv .env | endif\6*\rVimEnter\aau\0", "config", "vim-dotenv")
time([[Config for vim-dotenv]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file CodeActionMenu lua require("packer.load")({'nvim-code-action-menu'}, { cmd = "CodeActionMenu", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
