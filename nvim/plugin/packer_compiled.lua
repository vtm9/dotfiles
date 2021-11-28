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
local package_path_str = "/home/vtm/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/vtm/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/vtm/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/vtm/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/vtm/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
    config = { "\27LJ\1\2Ò\2\0\0\4\0\14\0\0274\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\0014\0\4\0%\1\5\0%\2\6\0%\3\a\0>\0\4\0014\0\4\0%\1\5\0%\2\b\0%\3\t\0>\0\4\0014\0\4\0%\1\5\0%\2\n\0%\3\v\0>\0\4\0014\0\4\0%\1\5\0%\2\f\0%\3\r\0>\0\4\1G\0\1\0.<CMD>lua require('Navigator').right()<CR>\n<c-l>+<CMD>lua require('Navigator').up()<CR>\n<c-k>-<CMD>lua require('Navigator').down()<CR>\n<c-j>-<CMD>lua require('Navigator').left()<CR>\n<c-h>\5\bmap\1\0\2\20disable_on_zoom\1\14auto_save\fcurrent\nsetup\14Navigator\frequire\0" },
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
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["codi.vim"] = {
    config = { "\27LJ\1\0023\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\28cnoreabbrev Eval Codi!!\bcmd\0" },
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
    config = { "\27LJ\1\2\17\0\0\1\0\1\0\2%\0\0\0H\0\2\0\6 X\0\0\3\0\5\1\0144\0\0\0007\0\1\0004\1\2\0007\1\0\0017\1\3\1%\2\4\0>\1\2\0=\0\0\2\b\0\0\0T\0\2Ä)\0\2\0H\0\2\0)\0\1\0H\0\2\0\b%:t\vexpand\bvim\nempty\afn\2G\0\0\2\0\3\0\f4\0\0\0007\0\1\0007\0\2\0'\1\0\0>\0\2\2'\1P\0\1\1\0\0T\1\2Ä)\1\2\0H\1\2\0)\1\1\0H\1\2\0\rwinwidth\afn\bvimW\0\0\2\0\4\0\a3\0\0\0004\1\1\0007\1\2\0017\1\3\1>\1\1\0026\1\1\0H\1\2\0\tmode\afn\bvim\1\0\4\6n\vNORMAL\6c\fCOMMAND\6V\vVISUAL\6i\vINSERT˜\1\0\0\5\1\r\0*%\0\0\0004\1\1\0007\1\2\0017\1\3\1\15\0\1\0T\2\3Ä\16\1\0\0%\2\4\0$\0\2\1+\1\0\0>\1\1\2\15\0\1\0T\2\rÄ\16\1\0\0004\2\1\0007\2\5\0027\2\6\0024\3\1\0007\3\5\0037\3\a\3%\4\b\0>\3\2\2%\4\t\0>\2\3\2$\0\2\1T\1\aÄ\16\1\0\0004\2\1\0007\2\5\0027\2\a\2%\3\n\0>\2\2\2$\0\2\0014\1\1\0007\1\2\0017\1\v\1\15\0\1\0T\2\3Ä\16\1\0\0%\2\f\0$\0\2\1H\0\2\0\5¿\n üñç\rmodified\b%:t\t:~:.\6%\vexpand\16fnamemodify\afn\tüîí\rreadonly\abo\bvim\5\20\0\0\1\0\1\0\2%\0\0\0H\0\2\0\tÔû£ ´\f\1\0\f\0D\0ã\0013\0\0\0004\1\1\0%\2\2\0>\1\2\0027\2\3\0013\3\5\0:\3\4\0013\3\f\0003\4\a\0001\5\6\0:\5\b\0042\5\3\0007\6\t\0;\6\1\0057\6\n\0;\6\2\5:\5\v\4:\4\r\0031\4\14\0001\5\15\0002\6\5\0003\a\21\0003\b\18\0001\t\17\0:\t\b\b2\t\3\0007\n\19\0;\n\1\t7\n\20\0;\n\2\t:\t\v\b:\b\22\a;\a\1\6;\3\2\0063\a\27\0003\b\23\0002\t\3\0004\n\1\0%\v\24\0>\n\2\0027\n\25\n;\n\1\t7\n\26\0;\n\2\t:\t\v\b:\b\28\a;\a\3\0063\a\"\0003\b\30\0001\t\29\0:\t\b\b:\4\31\b2\t\3\0007\n \0;\n\1\t7\n!\0;\n\2\t:\t\v\b:\b#\a;\a\4\6:\6\16\0022\6\0\0:\6$\0022\6\a\0003\a)\0003\b&\0002\t\3\0007\n'\0;\n\1\t7\n(\0;\n\2\t:\t\v\b:\b*\a;\a\1\0063\a.\0003\b+\0002\t\3\0007\n,\0;\n\1\t7\n-\0;\n\2\t:\t\v\b:\b/\a;\a\2\0063\a3\0003\b0\0002\t\3\0007\n1\0;\n\1\t7\n2\0;\n\2\t:\t\v\b:\b4\a;\a\3\0063\a6\0003\b5\0002\t\3\0007\n1\0;\n\1\t7\n2\0;\n\2\t:\t\v\b:\b7\a;\a\4\0063\a>\0003\b9\0001\t8\0:\t\b\b4\t\1\0%\n:\0>\t\2\0027\t;\t:\t\31\b2\t\3\0007\n<\0;\n\1\t7\n=\0;\n\2\t:\t\v\b:\b?\a;\a\5\0063\aB\0003\b@\0004\t\1\0%\n:\0>\t\2\0027\t;\t:\t\31\b3\tA\0007\n<\0;\n\1\t7\n=\0;\n\2\t:\t\v\b:\bC\a;\a\6\6:\6%\0020\0\0ÄG\0\1\0\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\ngitBg\ngitFg\24check_git_workspace\28galaxyline.provider_vcs\1\0\0\0\19DiagnosticInfo\1\0\0\1\0\2\ticon\tÔÇ≠ \rprovider\19DiagnosticInfo\19DiagnosticHint\1\0\0\vhintBg\vhintFg\1\0\2\ticon\tÔÉ´ \rprovider\19DiagnosticHint\19DiagnosticWarn\1\0\0\14warningBg\14warningFg\1\0\2\ticon\tÔÅ± \rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\ferrorBg\ferrorFg\1\0\2\ticon\tÔÅó \rprovider\20DiagnosticError\nright\bmid\rFilePath\1\0\0\15filepathBg\15filepathFg\14condition\1\0\0\0\rFileIcon\1\0\0\15fileiconBg\24get_file_icon_color!galaxyline.provider_fileinfo\1\0\1\rprovider\rFileIcon\vViMode\1\0\0\vmodeBg\vmodeFg\1\0\0\0\tleft\0\0\nSpace\1\0\0\14highlight\fspaceBg\fspaceFg\rprovider\1\0\0\0\1\n\0\0\fLuaTree\nvista\tdbui\rstartify\tterm\rnerdtree\rfugitive\18fugitiveblame\tplug\20short_line_list\fsection\15galaxyline\frequire\1\0\19\vinfoFg\f#7f8490\vmodeBg\tnone\vhintBg\tnone\vlineBg\tnone\ngitBg\tnone\vlineFg\f#78dce8\ngitFg\f#78dce8\15filepathBg\tnone\15filepathFg\f#e5c463\ferrorFg\f#fc5d7c\fspaceBg\tnone\ferrorBg\tnone\vinfoBg\tnone\14warningFg\f#e7c664\vhintFg\f#7f8490\14warningBg\tnone\fspaceFg\tnone\15fileiconBg\tnone\vmodeFg\f#9ecd6f\0" },
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
    config = { '\27LJ\1\2C\0\1\3\0\4\0\v4\1\0\0007\1\1\0017\1\2\1\16\2\0\0>\1\2\2\a\1\3\0T\1\2Ä)\1\1\0H\1\2\0)\1\2\0H\1\2\0\5\fbufname\afn\bvimØ\5\1\0\5\0"\0)4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\b\0003\2\3\0003\3\4\0:\3\5\0021\3\6\0:\3\a\2:\2\t\0013\2\v\0003\3\n\0:\3\f\0023\3\r\0:\3\14\0023\3\15\0:\3\16\0023\3\17\0:\3\18\0023\3\19\0:\3\20\0023\3\21\0003\4\22\0:\4\23\3:\3\24\0023\3\25\0:\3\26\2:\2\27\1>\0\2\0014\0\28\0%\1\29\0%\2\30\0%\3\31\0>\0\4\0014\0\28\0%\1\29\0%\2 \0%\3!\0>\0\4\1G\0\1\0\29:BufferLineCyclePrev<cr>\r<S-Down>\29:BufferLineCycleNext<cr>\v<S-Up>\6n\bmap\15highlights\rmodified\1\0\1\nguibg\tnone\23indicator_selected\nguifg\1\0\2\14highlight\vNormal\14attribute\abg\1\0\1\nguibg\tnone\20buffer_selected\1\0\1\nguifg\f#e5c463\14duplicate\1\0\1\nguibg\tnone\btab\1\0\1\nguibg\tnone\15background\1\0\1\nguibg\tnone\tfill\1\0\0\1\0\1\nguibg\tnone\foptions\1\0\0\18custom_filter\0\20separator_style\1\3\0\0\5\5\1\0\b\rtab_size\3\25\20max_name_length\3#\tview\16multiwindow\fnumbers\tnone\28show_buffer_close_icons\1\22max_prefix_length\3\0\20show_close_icon\1\18modified_icon\tüñç\nsetup\15bufferline\frequire\0' },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\1\2è\1\0\0\5\0\a\2\0264\0\0\0007\0\1\0%\1\2\0>\0\2\2\21\0\0\0\b\0\1\0T\1\17Ä4\1\0\0007\1\3\1%\2\2\0>\1\2\2\16\2\1\0007\1\4\1\16\3\0\0\16\4\0\0>\1\4\2\16\2\1\0007\1\5\1%\3\6\0>\1\3\2\v\1\0\0T\1\2Ä)\1\1\0T\2\1Ä)\1\2\0H\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\2\0;\0\1\3\0\4\0\0064\1\0\0007\1\1\0017\1\2\0017\2\3\0>\1\2\1G\0\1\0\tbody\20vsnip#anonymous\afn\bvim\2\0\1\a\1\f\1=4\1\0\0007\1\1\0017\1\2\1>\1\1\2\t\1\0\0T\1\14Ä4\1\0\0007\1\1\0017\1\3\0014\2\0\0007\2\4\0027\2\5\2%\3\6\0)\4\2\0)\5\2\0)\6\2\0>\2\5\2%\3\a\0>\1\3\1T\1(Ä4\1\0\0007\1\1\0017\1\b\1>\1\1\2\t\1\0\0T\1\14Ä4\1\0\0007\1\1\0017\1\3\0014\2\0\0007\2\4\0027\2\5\2%\3\t\0)\4\2\0)\5\2\0)\6\2\0>\2\5\2%\3\n\0>\1\3\1T\1\20Ä+\1\0\0>\1\1\2\15\0\1\0T\2\14Ä4\1\0\0007\1\1\0017\1\3\0014\2\0\0007\2\4\0027\2\5\2%\3\v\0)\4\2\0)\5\2\0)\6\2\0>\2\5\2%\3\n\0>\1\3\1T\1\2Ä\16\1\0\0>\1\1\1G\0\1\0\2¿\n<Tab>\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\6n\n<C-n>\27nvim_replace_termcodes\bapi\rfeedkeys\15pumvisible\afn\bvim\2õ\2\0\1\a\0\v\1+4\1\0\0007\1\1\0017\1\2\1>\1\1\2\t\1\0\0T\1\14Ä4\1\0\0007\1\1\0017\1\3\0014\2\0\0007\2\4\0027\2\5\2%\3\6\0)\4\2\0)\5\2\0)\6\2\0>\2\5\2%\3\a\0>\1\3\1T\1\22Ä4\1\0\0007\1\1\0017\1\b\1>\1\1\2\t\1\0\0T\1\14Ä4\1\0\0007\1\1\0017\1\3\0014\2\0\0007\2\4\0027\2\5\2%\3\t\0)\4\2\0)\5\2\0)\6\2\0>\2\5\2%\3\n\0>\1\3\1T\1\2Ä\16\1\0\0>\1\1\1G\0\1\0\5\28<Plug>(vsnip-jump-prev)\20vsnip#available\6n\n<C-p>\27nvim_replace_termcodes\bapi\rfeedkeys\15pumvisible\afn\bvim\2ì\a\1\0\v\0004\0T4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0021\2\3\0007\3\4\0003\4\a\0007\5\1\0017\5\5\0057\5\6\5:\5\b\0043\5\t\0:\5\n\0043\5\v\0:\5\f\0043\5\14\0001\6\r\0:\6\15\5:\5\16\0042\5\4\0003\6\17\0;\6\1\0053\6\18\0;\6\2\0053\6\19\0;\6\3\5:\5\20\0043\5\23\0007\6\21\0007\6\22\6'\a¸ˇ>\6\2\2:\6\24\0057\6\21\0007\6\22\6'\a\4\0>\6\2\2:\6\25\0057\6\21\0007\6\26\6'\a¸ˇ>\6\2\2:\6\27\0057\6\21\0007\6\28\6'\a\4\0>\6\2\2:\6\29\0057\6\21\0007\6\30\6>\6\1\2:\6\31\0057\6\21\0007\6 \6>\6\1\2:\6!\0057\6\21\0007\6\"\0063\a%\0007\b#\0007\b$\b:\b&\a>\6\2\2:\6'\0051\6(\0:\6)\0051\6*\0:\6+\5:\5\21\4>\3\2\0014\3,\0%\4-\0%\5.\0%\6/\0%\a0\0%\b1\0%\t2\0%\n3\0$\6\n\6>\3\4\0010\0\0ÄG\0\1\0\t } }+{ name = 'look', max_item_count = 10 }\24{ name = 'emoji' },-{ name = 'spell', max_item_count = 10 },1lua require'cmp'.setup.buffer { sources = { \23gitcommit,markdown\rfiletype\aau\f<S-Tab>\0\n<Tab>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-p>\21select_next_item\n<C-n>\21select_prev_item\n<C-f>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsources\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\fsnippet\vexpand\1\0\0\0\17experimental\1\0\1\15ghost_text\2\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\14preselect\1\0\0\tItem\18PreselectMode\nsetup\0\14cmp.types\bcmp\frequire\0" },
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
    config = { '\27LJ\1\2¥\3\0\0\5\0\f\0\0214\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\0014\0\6\0%\1\a\0%\2\b\0%\3\t\0002\4\0\0>\0\5\0014\0\6\0%\1\a\0%\2\n\0%\3\v\0002\4\0\0>\0\5\1G\0\1\0+<cmd>lua require("spectre").open()<CR>\14<leader>R1viw:lua require("spectre").open_visual()<CR>\14<leader>r\6n\bmap\14highlight\1\0\3\vsearch\15DiffDelete\aui\vString\freplace\15DiffChange\1\0\4\19line_sep_start1‚îå-----------------------------------------\19color_devicons\2\rline_sep1‚îî-----------------------------------------\19result_padding\t¬¶  \nsetup\fspectre\frequire\0' },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://github.com/windwp/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\1\2Ø\5\0\0\4\0\24\0(4\0\0\0%\1\1\0%\2\2\0%\3\3\0>\0\4\0014\0\4\0%\1\6\0:\1\5\0004\0\4\0'\1\30\0:\1\a\0004\0\4\0'\1\1\0:\1\b\0004\0\4\0'\1\1\0:\1\t\0004\0\4\0'\1\1\0:\1\n\0004\0\4\0'\1\1\0:\1\v\0004\0\4\0003\1\r\0:\1\f\0004\0\4\0003\1\15\0003\2\16\0:\2\17\0013\2\18\0:\2\19\1:\1\14\0004\0\20\0%\1\21\0>\0\2\0027\0\22\0003\1\23\0>\0\2\1G\0\1\0\1\0\3\15auto_close\1\18disable_netrw\1\18open_on_setup\1\nsetup\14nvim-tree\frequire\vfolder\1\0\2\fdefault\bÓóø\topen\bÓóæ\bgit\1\0\5\runstaged\b‚úó\14untracked\b‚òÖ\runmerged\bÓúß\frenamed\b‚ûú\vstaged\b‚úì\1\0\2\fdefault\bÓòí\fsymlink\bÔíÅ\20nvim_tree_icons\1\0\3\ffolders\3\1\nfiles\3\1\bgit\3\1\25nvim_tree_show_icons\27nvim_tree_allow_resize\21nvim_tree_git_hl\29nvim_tree_indent_markers\27nvim_tree_quit_on_open\20nvim_tree_width\tleft\19nvim_tree_side\6g}:lua if ft() == 'NvimTree' or ft() == 'startify' then vim.cmd('NvimTreeToggle') else vim.cmd('NvimTreeFindFile') end<cr>\n<c-n>\6n\bmap\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\2¬\4\0\0\5\0\22\0\0304\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0023\1\a\0003\2\4\0003\3\5\0:\3\6\2:\2\b\1:\1\3\0004\1\0\0%\2\t\0>\1\2\0027\1\n\0013\2\v\0003\3\f\0003\4\r\0:\4\14\3:\3\15\0023\3\16\0002\4\0\0:\4\17\0032\4\0\0:\4\18\0033\4\19\0:\4\20\3:\3\21\2>\1\2\1G\0\1\0\npairs\fkeymaps\1\0\1\17goto_partner\14<leader>%\26highlight_pair_events\fdisable\1\0\4\19goto_right_end\1\24fallback_cmd_normal)call matchit#Match_wrapper('',1,'n')\19highlight_self\1\venable\2\14highlight\vindent\1\0\1\venable\2\1\0\2\21use_languagetree\2\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\17install_info\1\0\0\nfiles\1\2\0\0\17src/parser.c\1\0\2\vbranch\tmain\burl5https://github.com/NTBBloodbath/tree-sitter-http\thttp\23get_parser_configs\28nvim-treesitter.parsers\frequire\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
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
    config = { "\27LJ\1\2:\0\0\2\0\3\0\0044\0\0\0003\1\2\0:\1\1\0G\0\1\0\1\5\0\0\6f\6F\6t\6T\25qs_highlight_on_keys\6g\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/quick-scope",
    url = "https://github.com/unblevable/quick-scope"
  },
  ["rest.nvim"] = {
    config = { "\27LJ\1\2®\1\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\1G\0\1\0\14highlight\1\0\2\fenabled\2\ftimeout\3ñ\1\1\0\3\20jump_to_request\1\26skip_ssl_verification\1\28result_split_horizontal\1\nsetup\14rest-nvim\frequire\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/rest.nvim",
    url = "https://github.com/NTBBloodbath/rest.nvim"
  },
  sonokai = {
    config = { "\27LJ\1\2\v\0\0\1\0\0\0\1G\0\1\0\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  ["splitjoin.vim"] = {
    config = { "\27LJ\1\2f\0\0\4\0\6\0\v4\0\0\0%\1\1\0%\2\2\0%\3\3\0>\0\4\0014\0\0\0%\1\1\0%\2\4\0%\3\5\0>\0\4\1G\0\1\0\24:SplitjoinSplit<cr>\ags\23:SplitjoinJoin<cr>\agj\6n\bmap\0" },
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
  ["treesitter-unit"] = {
    config = { '\27LJ\1\2õ\3\0\0\5\0\15\0!4\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0003\4\6\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\a\0%\3\b\0003\4\t\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\n\0%\2\4\0%\3\v\0003\4\f\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\n\0%\2\a\0%\3\r\0003\4\14\0>\0\5\1G\0\1\0\1\0\1\fnoremap\0028:<c-u>lua require"treesitter-unit".select(true)<CR>\1\0\1\fnoremap\0024:<c-u>lua require"treesitter-unit".select()<CR>\6o\1\0\1\fnoremap\0023:lua require"treesitter-unit".select(true)<CR>\aau\1\0\1\fnoremap\2/:lua require"treesitter-unit".select()<CR>\aiu\6x\20nvim_set_keymap\bapi\bvim\0' },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/treesitter-unit",
    url = "https://github.com/David-Kunz/treesitter-unit"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\1\2Ä\1\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\3\15auto_close\2\tmode\29lsp_document_diagnostics\29use_lsp_diagnostic_signs\2\nsetup\ftrouble\frequire\0" },
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
    config = { "\27LJ\1\0022\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\27cnoreabbrev bd Bdelete\bcmd\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://github.com/moll/vim-bbye"
  },
  ["vim-bufonly"] = {
    config = { "\27LJ\1\0020\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\25cnoreabbrev bo Bonly\bcmd\0" },
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
    config = { "\27LJ\1\2ÿ\1\0\0\2\0\6\0\0174\0\0\0007\0\1\0%\1\2\0>\0\2\0014\0\0\0007\0\1\0%\1\3\0>\0\2\0014\0\0\0007\0\1\0%\1\4\0>\0\2\0014\0\0\0007\0\1\0%\1\5\0>\0\2\1G\0\1\0$nmap <leader>c <Plug>Commentary$omap <leader>c <Plug>Commentary$xmap <leader>c <Plug>Commentary)nmap <leader>cc <Plug>CommentaryLine\bcmd\bvim\0" },
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
    config = { "\27LJ\1\2ê\1\0\0\2\0\5\0\r4\0\0\0007\0\1\0'\1\1\0:\1\2\0004\0\0\0007\0\1\0'\1\1\0:\1\3\0004\0\0\0007\0\1\0'\1\1\0:\1\4\0G\0\1\0\25db_ui_use_nerd_fonts\29db_ui_show_database_icon%db_ui_auto_execute_table_helpers\6g\bvim\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui",
    url = "https://github.com/kristijanhusak/vim-dadbod-ui"
  },
  ["vim-dotenv"] = {
    config = { "\27LJ\1\2ç\1\0\0\4\0\a\0\v4\0\0\0%\1\1\0%\2\2\0%\3\3\0>\0\4\0014\0\0\0%\1\4\0%\2\5\0%\3\6\0>\0\4\1G\0\1\0\16Dotenv .env\t.env\17BufWritePost2if !empty(glob('.env')) | Dotenv .env | endif\6*\rVimEnter\aau\0" },
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
  ["vim-floaterm"] = {
    config = { '\27LJ\1\2ç\2\0\0\4\0\14\1\0244\0\0\0(\1\0\0:\1\1\0004\0\0\0(\1\0\0:\1\2\0004\0\0\0%\1\4\0:\1\3\0004\0\5\0%\1\6\0%\2\a\0%\3\b\0>\0\4\0014\0\5\0%\1\t\0%\2\a\0%\3\n\0>\0\4\0014\0\v\0%\1\f\0003\2\r\0>\0\3\1G\0\1\0\1\0\2\nguifg\tnone\nguibg\tnone\19FloatermBorder\ahi"<c-\\><c-n>:FloatermToggle<cr>\6t\24:FloatermToggle<cr>\n<F11>\6n\bmap\5\19floaterm_title\20floaterm_height\19floaterm_width\6g›ûäÆ\15î‹æˇ\3\0' },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-fugitive"] = {
    config = { "\27LJ\1\2ˆ\1\0\0\4\0\v\0\0234\0\0\0%\1\1\0>\0\2\0014\0\0\0%\1\2\0>\0\2\0014\0\0\0%\1\3\0>\0\2\0014\0\0\0%\1\4\0>\0\2\0014\0\5\0%\1\6\0%\2\a\0%\3\b\0>\0\4\0014\0\5\0%\1\6\0%\2\t\0%\3\n\0>\0\4\1G\0\1\0\21:diffget //3<cr>\agt\21:diffget //2<cr>\agm\6n\bmap\22cnoreabbrev gs Gs\26command! Gs :Git | on%cnoreabbrev gpf Git push --force\28cnoreabbrev gp Git push\bcmd\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-hexokinase"] = {
    config = { "\27LJ\1\2L\0\0\2\0\4\0\0054\0\0\0007\0\1\0003\1\3\0:\1\2\0G\0\1\0\1\2\0\0\19foregroundfull\28Hexokinase_highlighters\6g\bvim\0" },
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
  ["vim-slim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/opt/vim-slim",
    url = "https://github.com/slim-template/vim-slim"
  },
  ["vim-speeddating"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-speeddating",
    url = "https://github.com/tpope/vim-speeddating"
  },
  ["vim-startify"] = {
    config = { "\27LJ\1\2ú\2\0\0\6\0\v\0\0234\0\0\0002\1\3\0003\2\2\0002\3\3\0%\4\3\0004\5\4\0007\5\5\5>\5\1\2$\4\5\4;\4\1\3:\3\6\2;\2\1\1:\1\1\0004\0\0\0'\1\1\0:\1\a\0004\0\0\0'\1\1\0:\1\b\0004\0\0\0003\1\n\0:\1\t\0G\0\1\0\1\17\0\0\6a\6r\6s\6t\6n\6e\6o\6i\3\1\3\2\3\3\3\4\3\a\3\b\3\t\3\0\28startify_custom_indices\28startify_enable_special startify_change_to_vcs_root\vheader\vgetcwd\afn\31 Most recently updated in \1\0\1\ttype\bdir\19startify_lists\6g\0" },
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
    config = { "\27LJ\1\2À\2\0\0\4\0\6\0\v4\0\0\0%\1\1\0%\2\2\0%\3\3\0>\0\4\0014\0\0\0%\1\1\0%\2\4\0%\3\5\0>\0\4\1G\0\1\0ç\1:<c-u>call subversive#singleMotion#substituteLineSetup(v:register, v:count)<cr>:set opfunc=subversive#singleMotion#substituteLine<cr>g@l\ammÜ\1:<c-u>call subversive#singleMotion#preSubstitute(v:register, 0, '')<cr>:set opfunc=subversive#singleMotion#substituteMotion<cr>g@\6m\6n\bmap\0" },
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
    config = { "\27LJ\1\2S\0\0\2\0\3\0\a4\0\0\0'\1\1\0:\1\1\0004\0\0\0'\1\1\0:\1\2\0G\0\1\0\26terraform_fmt_on_save\28terraform_fold_sections\6g\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-terraform",
    url = "https://github.com/hashivim/vim-terraform"
  },
  ["vim-test"] = {
    config = { "\27LJ\1\2¯\3\0\0\5\0\22\0-4\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\4\0007\0\5\0%\1\6\0%\2\a\0%\3\b\0003\4\t\0>\0\5\0014\0\0\0007\0\4\0007\0\5\0%\1\6\0%\2\n\0%\3\v\0003\4\f\0>\0\5\0014\0\0\0007\0\4\0007\0\5\0%\1\6\0%\2\r\0%\3\14\0003\4\15\0>\0\5\0014\0\0\0007\0\4\0007\0\5\0%\1\6\0%\2\16\0%\3\17\0003\4\18\0>\0\5\0014\0\0\0007\0\4\0007\0\5\0%\1\6\0%\2\19\0%\3\20\0003\4\21\0>\0\5\1G\0\1\0\1\0\2\vsilent\2\fnoremap\2\23<cmd>TestVisit<CR>\15<leader>tv\1\0\2\vsilent\2\fnoremap\2\22<cmd>TestLast<CR>\15<leader>tl\1\0\2\vsilent\2\fnoremap\2\23<cmd>TestSuite<CR>\15<leader>ts\1\0\2\vsilent\2\fnoremap\2\22<cmd>TestFile<CR>\15<leader>tf\1\0\2\vsilent\2\fnoremap\2\25<cmd>TestNearest<CR>\15<leader>tn\6n\20nvim_set_keymap\bapi\29asyncrun_background_term\18test#strategy\6g\bvim\0" },
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
  },
  ["vim-vsnip"] = {
    config = { "\27LJ\1\2x\0\0\3\0\a\0\f4\0\0\0)\1\1\0:\1\1\0004\0\0\0004\1\3\0007\1\4\1%\2\5\0>\1\2\2%\2\6\0$\1\2\1:\1\2\0G\0\1\0\v/vsnip\vconfig\fstdpath\afn\22vsnip_snippet_dir\24vsnip_extra_mapping\6g\0" },
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/vtm/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\1\2¬\4\0\0\5\0\22\0\0304\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0023\1\a\0003\2\4\0003\3\5\0:\3\6\2:\2\b\1:\1\3\0004\1\0\0%\2\t\0>\1\2\0027\1\n\0013\2\v\0003\3\f\0003\4\r\0:\4\14\3:\3\15\0023\3\16\0002\4\0\0:\4\17\0032\4\0\0:\4\18\0033\4\19\0:\4\20\3:\3\21\2>\1\2\1G\0\1\0\npairs\fkeymaps\1\0\1\17goto_partner\14<leader>%\26highlight_pair_events\fdisable\1\0\4\19goto_right_end\1\24fallback_cmd_normal)call matchit#Match_wrapper('',1,'n')\19highlight_self\1\venable\2\14highlight\vindent\1\0\1\venable\2\1\0\2\21use_languagetree\2\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\17install_info\1\0\0\nfiles\1\2\0\0\17src/parser.c\1\0\2\vbranch\tmain\burl5https://github.com/NTBBloodbath/tree-sitter-http\thttp\23get_parser_configs\28nvim-treesitter.parsers\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: vim-test
time([[Config for vim-test]], true)
try_loadstring("\27LJ\1\2¯\3\0\0\5\0\22\0-4\0\0\0007\0\1\0%\1\3\0:\1\2\0004\0\0\0007\0\4\0007\0\5\0%\1\6\0%\2\a\0%\3\b\0003\4\t\0>\0\5\0014\0\0\0007\0\4\0007\0\5\0%\1\6\0%\2\n\0%\3\v\0003\4\f\0>\0\5\0014\0\0\0007\0\4\0007\0\5\0%\1\6\0%\2\r\0%\3\14\0003\4\15\0>\0\5\0014\0\0\0007\0\4\0007\0\5\0%\1\6\0%\2\16\0%\3\17\0003\4\18\0>\0\5\0014\0\0\0007\0\4\0007\0\5\0%\1\6\0%\2\19\0%\3\20\0003\4\21\0>\0\5\1G\0\1\0\1\0\2\vsilent\2\fnoremap\2\23<cmd>TestVisit<CR>\15<leader>tv\1\0\2\vsilent\2\fnoremap\2\22<cmd>TestLast<CR>\15<leader>tl\1\0\2\vsilent\2\fnoremap\2\23<cmd>TestSuite<CR>\15<leader>ts\1\0\2\vsilent\2\fnoremap\2\22<cmd>TestFile<CR>\15<leader>tf\1\0\2\vsilent\2\fnoremap\2\25<cmd>TestNearest<CR>\15<leader>tn\6n\20nvim_set_keymap\bapi\29asyncrun_background_term\18test#strategy\6g\bvim\0", "config", "vim-test")
time([[Config for vim-test]], false)
-- Config for: sonokai
time([[Config for sonokai]], true)
try_loadstring("\27LJ\1\2\v\0\0\1\0\0\0\1G\0\1\0\0", "config", "sonokai")
time([[Config for sonokai]], false)
-- Config for: rest.nvim
time([[Config for rest.nvim]], true)
try_loadstring("\27LJ\1\2®\1\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\1G\0\1\0\14highlight\1\0\2\fenabled\2\ftimeout\3ñ\1\1\0\3\20jump_to_request\1\26skip_ssl_verification\1\28result_split_horizontal\1\nsetup\14rest-nvim\frequire\0", "config", "rest.nvim")
time([[Config for rest.nvim]], false)
-- Config for: vim-dotenv
time([[Config for vim-dotenv]], true)
try_loadstring("\27LJ\1\2ç\1\0\0\4\0\a\0\v4\0\0\0%\1\1\0%\2\2\0%\3\3\0>\0\4\0014\0\0\0%\1\4\0%\2\5\0%\3\6\0>\0\4\1G\0\1\0\16Dotenv .env\t.env\17BufWritePost2if !empty(glob('.env')) | Dotenv .env | endif\6*\rVimEnter\aau\0", "config", "vim-dotenv")
time([[Config for vim-dotenv]], false)
-- Config for: vim-bbye
time([[Config for vim-bbye]], true)
try_loadstring("\27LJ\1\0022\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\27cnoreabbrev bd Bdelete\bcmd\0", "config", "vim-bbye")
time([[Config for vim-bbye]], false)
-- Config for: vim-floaterm
time([[Config for vim-floaterm]], true)
try_loadstring('\27LJ\1\2ç\2\0\0\4\0\14\1\0244\0\0\0(\1\0\0:\1\1\0004\0\0\0(\1\0\0:\1\2\0004\0\0\0%\1\4\0:\1\3\0004\0\5\0%\1\6\0%\2\a\0%\3\b\0>\0\4\0014\0\5\0%\1\t\0%\2\a\0%\3\n\0>\0\4\0014\0\v\0%\1\f\0003\2\r\0>\0\3\1G\0\1\0\1\0\2\nguifg\tnone\nguibg\tnone\19FloatermBorder\ahi"<c-\\><c-n>:FloatermToggle<cr>\6t\24:FloatermToggle<cr>\n<F11>\6n\bmap\5\19floaterm_title\20floaterm_height\19floaterm_width\6g›ûäÆ\15î‹æˇ\3\0', "config", "vim-floaterm")
time([[Config for vim-floaterm]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\1\2\17\0\0\1\0\1\0\2%\0\0\0H\0\2\0\6 X\0\0\3\0\5\1\0144\0\0\0007\0\1\0004\1\2\0007\1\0\0017\1\3\1%\2\4\0>\1\2\0=\0\0\2\b\0\0\0T\0\2Ä)\0\2\0H\0\2\0)\0\1\0H\0\2\0\b%:t\vexpand\bvim\nempty\afn\2G\0\0\2\0\3\0\f4\0\0\0007\0\1\0007\0\2\0'\1\0\0>\0\2\2'\1P\0\1\1\0\0T\1\2Ä)\1\2\0H\1\2\0)\1\1\0H\1\2\0\rwinwidth\afn\bvimW\0\0\2\0\4\0\a3\0\0\0004\1\1\0007\1\2\0017\1\3\1>\1\1\0026\1\1\0H\1\2\0\tmode\afn\bvim\1\0\4\6n\vNORMAL\6c\fCOMMAND\6V\vVISUAL\6i\vINSERT˜\1\0\0\5\1\r\0*%\0\0\0004\1\1\0007\1\2\0017\1\3\1\15\0\1\0T\2\3Ä\16\1\0\0%\2\4\0$\0\2\1+\1\0\0>\1\1\2\15\0\1\0T\2\rÄ\16\1\0\0004\2\1\0007\2\5\0027\2\6\0024\3\1\0007\3\5\0037\3\a\3%\4\b\0>\3\2\2%\4\t\0>\2\3\2$\0\2\1T\1\aÄ\16\1\0\0004\2\1\0007\2\5\0027\2\a\2%\3\n\0>\2\2\2$\0\2\0014\1\1\0007\1\2\0017\1\v\1\15\0\1\0T\2\3Ä\16\1\0\0%\2\f\0$\0\2\1H\0\2\0\5¿\n üñç\rmodified\b%:t\t:~:.\6%\vexpand\16fnamemodify\afn\tüîí\rreadonly\abo\bvim\5\20\0\0\1\0\1\0\2%\0\0\0H\0\2\0\tÔû£ ´\f\1\0\f\0D\0ã\0013\0\0\0004\1\1\0%\2\2\0>\1\2\0027\2\3\0013\3\5\0:\3\4\0013\3\f\0003\4\a\0001\5\6\0:\5\b\0042\5\3\0007\6\t\0;\6\1\0057\6\n\0;\6\2\5:\5\v\4:\4\r\0031\4\14\0001\5\15\0002\6\5\0003\a\21\0003\b\18\0001\t\17\0:\t\b\b2\t\3\0007\n\19\0;\n\1\t7\n\20\0;\n\2\t:\t\v\b:\b\22\a;\a\1\6;\3\2\0063\a\27\0003\b\23\0002\t\3\0004\n\1\0%\v\24\0>\n\2\0027\n\25\n;\n\1\t7\n\26\0;\n\2\t:\t\v\b:\b\28\a;\a\3\0063\a\"\0003\b\30\0001\t\29\0:\t\b\b:\4\31\b2\t\3\0007\n \0;\n\1\t7\n!\0;\n\2\t:\t\v\b:\b#\a;\a\4\6:\6\16\0022\6\0\0:\6$\0022\6\a\0003\a)\0003\b&\0002\t\3\0007\n'\0;\n\1\t7\n(\0;\n\2\t:\t\v\b:\b*\a;\a\1\0063\a.\0003\b+\0002\t\3\0007\n,\0;\n\1\t7\n-\0;\n\2\t:\t\v\b:\b/\a;\a\2\0063\a3\0003\b0\0002\t\3\0007\n1\0;\n\1\t7\n2\0;\n\2\t:\t\v\b:\b4\a;\a\3\0063\a6\0003\b5\0002\t\3\0007\n1\0;\n\1\t7\n2\0;\n\2\t:\t\v\b:\b7\a;\a\4\0063\a>\0003\b9\0001\t8\0:\t\b\b4\t\1\0%\n:\0>\t\2\0027\t;\t:\t\31\b2\t\3\0007\n<\0;\n\1\t7\n=\0;\n\2\t:\t\v\b:\b?\a;\a\5\0063\aB\0003\b@\0004\t\1\0%\n:\0>\t\2\0027\t;\t:\t\31\b3\tA\0007\n<\0;\n\1\t7\n=\0;\n\2\t:\t\v\b:\bC\a;\a\6\6:\6%\0020\0\0ÄG\0\1\0\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\ngitBg\ngitFg\24check_git_workspace\28galaxyline.provider_vcs\1\0\0\0\19DiagnosticInfo\1\0\0\1\0\2\ticon\tÔÇ≠ \rprovider\19DiagnosticInfo\19DiagnosticHint\1\0\0\vhintBg\vhintFg\1\0\2\ticon\tÔÉ´ \rprovider\19DiagnosticHint\19DiagnosticWarn\1\0\0\14warningBg\14warningFg\1\0\2\ticon\tÔÅ± \rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\ferrorBg\ferrorFg\1\0\2\ticon\tÔÅó \rprovider\20DiagnosticError\nright\bmid\rFilePath\1\0\0\15filepathBg\15filepathFg\14condition\1\0\0\0\rFileIcon\1\0\0\15fileiconBg\24get_file_icon_color!galaxyline.provider_fileinfo\1\0\1\rprovider\rFileIcon\vViMode\1\0\0\vmodeBg\vmodeFg\1\0\0\0\tleft\0\0\nSpace\1\0\0\14highlight\fspaceBg\fspaceFg\rprovider\1\0\0\0\1\n\0\0\fLuaTree\nvista\tdbui\rstartify\tterm\rnerdtree\rfugitive\18fugitiveblame\tplug\20short_line_list\fsection\15galaxyline\frequire\1\0\19\vinfoFg\f#7f8490\vmodeBg\tnone\vhintBg\tnone\vlineBg\tnone\ngitBg\tnone\vlineFg\f#78dce8\ngitFg\f#78dce8\15filepathBg\tnone\15filepathFg\f#e5c463\ferrorFg\f#fc5d7c\fspaceBg\tnone\ferrorBg\tnone\vinfoBg\tnone\14warningFg\f#e7c664\vhintFg\f#7f8490\14warningBg\tnone\fspaceFg\tnone\15fileiconBg\tnone\vmodeFg\f#9ecd6f\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: codi.vim
time([[Config for codi.vim]], true)
try_loadstring("\27LJ\1\0023\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\28cnoreabbrev Eval Codi!!\bcmd\0", "config", "codi.vim")
time([[Config for codi.vim]], false)
-- Config for: vim-bufonly
time([[Config for vim-bufonly]], true)
try_loadstring("\27LJ\1\0020\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\25cnoreabbrev bo Bonly\bcmd\0", "config", "vim-bufonly")
time([[Config for vim-bufonly]], false)
-- Config for: vim-hexokinase
time([[Config for vim-hexokinase]], true)
try_loadstring("\27LJ\1\2L\0\0\2\0\4\0\0054\0\0\0007\0\1\0003\1\3\0:\1\2\0G\0\1\0\1\2\0\0\19foregroundfull\28Hexokinase_highlighters\6g\bvim\0", "config", "vim-hexokinase")
time([[Config for vim-hexokinase]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring('\27LJ\1\2C\0\1\3\0\4\0\v4\1\0\0007\1\1\0017\1\2\1\16\2\0\0>\1\2\2\a\1\3\0T\1\2Ä)\1\1\0H\1\2\0)\1\2\0H\1\2\0\5\fbufname\afn\bvimØ\5\1\0\5\0"\0)4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\b\0003\2\3\0003\3\4\0:\3\5\0021\3\6\0:\3\a\2:\2\t\0013\2\v\0003\3\n\0:\3\f\0023\3\r\0:\3\14\0023\3\15\0:\3\16\0023\3\17\0:\3\18\0023\3\19\0:\3\20\0023\3\21\0003\4\22\0:\4\23\3:\3\24\0023\3\25\0:\3\26\2:\2\27\1>\0\2\0014\0\28\0%\1\29\0%\2\30\0%\3\31\0>\0\4\0014\0\28\0%\1\29\0%\2 \0%\3!\0>\0\4\1G\0\1\0\29:BufferLineCyclePrev<cr>\r<S-Down>\29:BufferLineCycleNext<cr>\v<S-Up>\6n\bmap\15highlights\rmodified\1\0\1\nguibg\tnone\23indicator_selected\nguifg\1\0\2\14highlight\vNormal\14attribute\abg\1\0\1\nguibg\tnone\20buffer_selected\1\0\1\nguifg\f#e5c463\14duplicate\1\0\1\nguibg\tnone\btab\1\0\1\nguibg\tnone\15background\1\0\1\nguibg\tnone\tfill\1\0\0\1\0\1\nguibg\tnone\foptions\1\0\0\18custom_filter\0\20separator_style\1\3\0\0\5\5\1\0\b\rtab_size\3\25\20max_name_length\3#\tview\16multiwindow\fnumbers\tnone\28show_buffer_close_icons\1\22max_prefix_length\3\0\20show_close_icon\1\18modified_icon\tüñç\nsetup\15bufferline\frequire\0', "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: treesitter-unit
time([[Config for treesitter-unit]], true)
try_loadstring('\27LJ\1\2õ\3\0\0\5\0\15\0!4\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0003\4\6\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\a\0%\3\b\0003\4\t\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\n\0%\2\4\0%\3\v\0003\4\f\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\n\0%\2\a\0%\3\r\0003\4\14\0>\0\5\1G\0\1\0\1\0\1\fnoremap\0028:<c-u>lua require"treesitter-unit".select(true)<CR>\1\0\1\fnoremap\0024:<c-u>lua require"treesitter-unit".select()<CR>\6o\1\0\1\fnoremap\0023:lua require"treesitter-unit".select(true)<CR>\aau\1\0\1\fnoremap\2/:lua require"treesitter-unit".select()<CR>\aiu\6x\20nvim_set_keymap\bapi\bvim\0', "config", "treesitter-unit")
time([[Config for treesitter-unit]], false)
-- Config for: vim-startify
time([[Config for vim-startify]], true)
try_loadstring("\27LJ\1\2ú\2\0\0\6\0\v\0\0234\0\0\0002\1\3\0003\2\2\0002\3\3\0%\4\3\0004\5\4\0007\5\5\5>\5\1\2$\4\5\4;\4\1\3:\3\6\2;\2\1\1:\1\1\0004\0\0\0'\1\1\0:\1\a\0004\0\0\0'\1\1\0:\1\b\0004\0\0\0003\1\n\0:\1\t\0G\0\1\0\1\17\0\0\6a\6r\6s\6t\6n\6e\6o\6i\3\1\3\2\3\3\3\4\3\a\3\b\3\t\3\0\28startify_custom_indices\28startify_enable_special startify_change_to_vcs_root\vheader\vgetcwd\afn\31 Most recently updated in \1\0\1\ttype\bdir\19startify_lists\6g\0", "config", "vim-startify")
time([[Config for vim-startify]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\1\2Ø\5\0\0\4\0\24\0(4\0\0\0%\1\1\0%\2\2\0%\3\3\0>\0\4\0014\0\4\0%\1\6\0:\1\5\0004\0\4\0'\1\30\0:\1\a\0004\0\4\0'\1\1\0:\1\b\0004\0\4\0'\1\1\0:\1\t\0004\0\4\0'\1\1\0:\1\n\0004\0\4\0'\1\1\0:\1\v\0004\0\4\0003\1\r\0:\1\f\0004\0\4\0003\1\15\0003\2\16\0:\2\17\0013\2\18\0:\2\19\1:\1\14\0004\0\20\0%\1\21\0>\0\2\0027\0\22\0003\1\23\0>\0\2\1G\0\1\0\1\0\3\15auto_close\1\18disable_netrw\1\18open_on_setup\1\nsetup\14nvim-tree\frequire\vfolder\1\0\2\fdefault\bÓóø\topen\bÓóæ\bgit\1\0\5\runstaged\b‚úó\14untracked\b‚òÖ\runmerged\bÓúß\frenamed\b‚ûú\vstaged\b‚úì\1\0\2\fdefault\bÓòí\fsymlink\bÔíÅ\20nvim_tree_icons\1\0\3\ffolders\3\1\nfiles\3\1\bgit\3\1\25nvim_tree_show_icons\27nvim_tree_allow_resize\21nvim_tree_git_hl\29nvim_tree_indent_markers\27nvim_tree_quit_on_open\20nvim_tree_width\tleft\19nvim_tree_side\6g}:lua if ft() == 'NvimTree' or ft() == 'startify' then vim.cmd('NvimTreeToggle') else vim.cmd('NvimTreeFindFile') end<cr>\n<c-n>\6n\bmap\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: vim-dadbod-ui
time([[Config for vim-dadbod-ui]], true)
try_loadstring("\27LJ\1\2ê\1\0\0\2\0\5\0\r4\0\0\0007\0\1\0'\1\1\0:\1\2\0004\0\0\0007\0\1\0'\1\1\0:\1\3\0004\0\0\0007\0\1\0'\1\1\0:\1\4\0G\0\1\0\25db_ui_use_nerd_fonts\29db_ui_show_database_icon%db_ui_auto_execute_table_helpers\6g\bvim\0", "config", "vim-dadbod-ui")
time([[Config for vim-dadbod-ui]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\1\2Ä\1\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\3\15auto_close\2\tmode\29lsp_document_diagnostics\29use_lsp_diagnostic_signs\2\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: vim-commentary
time([[Config for vim-commentary]], true)
try_loadstring("\27LJ\1\2ÿ\1\0\0\2\0\6\0\0174\0\0\0007\0\1\0%\1\2\0>\0\2\0014\0\0\0007\0\1\0%\1\3\0>\0\2\0014\0\0\0007\0\1\0%\1\4\0>\0\2\0014\0\0\0007\0\1\0%\1\5\0>\0\2\1G\0\1\0$nmap <leader>c <Plug>Commentary$omap <leader>c <Plug>Commentary$xmap <leader>c <Plug>Commentary)nmap <leader>cc <Plug>CommentaryLine\bcmd\bvim\0", "config", "vim-commentary")
time([[Config for vim-commentary]], false)
-- Config for: vim-vsnip
time([[Config for vim-vsnip]], true)
try_loadstring("\27LJ\1\2x\0\0\3\0\a\0\f4\0\0\0)\1\1\0:\1\1\0004\0\0\0004\1\3\0007\1\4\1%\2\5\0>\1\2\2%\2\6\0$\1\2\1:\1\2\0G\0\1\0\v/vsnip\vconfig\fstdpath\afn\22vsnip_snippet_dir\24vsnip_extra_mapping\6g\0", "config", "vim-vsnip")
time([[Config for vim-vsnip]], false)
-- Config for: vim-terraform
time([[Config for vim-terraform]], true)
try_loadstring("\27LJ\1\2S\0\0\2\0\3\0\a4\0\0\0'\1\1\0:\1\1\0004\0\0\0'\1\1\0:\1\2\0G\0\1\0\26terraform_fmt_on_save\28terraform_fold_sections\6g\0", "config", "vim-terraform")
time([[Config for vim-terraform]], false)
-- Config for: vim-fugitive
time([[Config for vim-fugitive]], true)
try_loadstring("\27LJ\1\2ˆ\1\0\0\4\0\v\0\0234\0\0\0%\1\1\0>\0\2\0014\0\0\0%\1\2\0>\0\2\0014\0\0\0%\1\3\0>\0\2\0014\0\0\0%\1\4\0>\0\2\0014\0\5\0%\1\6\0%\2\a\0%\3\b\0>\0\4\0014\0\5\0%\1\6\0%\2\t\0%\3\n\0>\0\4\1G\0\1\0\21:diffget //3<cr>\agt\21:diffget //2<cr>\agm\6n\bmap\22cnoreabbrev gs Gs\26command! Gs :Git | on%cnoreabbrev gpf Git push --force\28cnoreabbrev gp Git push\bcmd\0", "config", "vim-fugitive")
time([[Config for vim-fugitive]], false)
-- Config for: splitjoin.vim
time([[Config for splitjoin.vim]], true)
try_loadstring("\27LJ\1\2f\0\0\4\0\6\0\v4\0\0\0%\1\1\0%\2\2\0%\3\3\0>\0\4\0014\0\0\0%\1\1\0%\2\4\0%\3\5\0>\0\4\1G\0\1\0\24:SplitjoinSplit<cr>\ags\23:SplitjoinJoin<cr>\agj\6n\bmap\0", "config", "splitjoin.vim")
time([[Config for splitjoin.vim]], false)
-- Config for: vim-subversive
time([[Config for vim-subversive]], true)
try_loadstring("\27LJ\1\2À\2\0\0\4\0\6\0\v4\0\0\0%\1\1\0%\2\2\0%\3\3\0>\0\4\0014\0\0\0%\1\1\0%\2\4\0%\3\5\0>\0\4\1G\0\1\0ç\1:<c-u>call subversive#singleMotion#substituteLineSetup(v:register, v:count)<cr>:set opfunc=subversive#singleMotion#substituteLine<cr>g@l\ammÜ\1:<c-u>call subversive#singleMotion#preSubstitute(v:register, 0, '')<cr>:set opfunc=subversive#singleMotion#substituteMotion<cr>g@\6m\6n\bmap\0", "config", "vim-subversive")
time([[Config for vim-subversive]], false)
-- Config for: nvim-spectre
time([[Config for nvim-spectre]], true)
try_loadstring('\27LJ\1\2¥\3\0\0\5\0\f\0\0214\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0:\2\5\1>\0\2\0014\0\6\0%\1\a\0%\2\b\0%\3\t\0002\4\0\0>\0\5\0014\0\6\0%\1\a\0%\2\n\0%\3\v\0002\4\0\0>\0\5\1G\0\1\0+<cmd>lua require("spectre").open()<CR>\14<leader>R1viw:lua require("spectre").open_visual()<CR>\14<leader>r\6n\bmap\14highlight\1\0\3\vsearch\15DiffDelete\aui\vString\freplace\15DiffChange\1\0\4\19line_sep_start1‚îå-----------------------------------------\19color_devicons\2\rline_sep1‚îî-----------------------------------------\19result_padding\t¬¶  \nsetup\fspectre\frequire\0', "config", "nvim-spectre")
time([[Config for nvim-spectre]], false)
-- Config for: Navigator.nvim
time([[Config for Navigator.nvim]], true)
try_loadstring("\27LJ\1\2Ò\2\0\0\4\0\14\0\0274\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\0014\0\4\0%\1\5\0%\2\6\0%\3\a\0>\0\4\0014\0\4\0%\1\5\0%\2\b\0%\3\t\0>\0\4\0014\0\4\0%\1\5\0%\2\n\0%\3\v\0>\0\4\0014\0\4\0%\1\5\0%\2\f\0%\3\r\0>\0\4\1G\0\1\0.<CMD>lua require('Navigator').right()<CR>\n<c-l>+<CMD>lua require('Navigator').up()<CR>\n<c-k>-<CMD>lua require('Navigator').down()<CR>\n<c-j>-<CMD>lua require('Navigator').left()<CR>\n<c-h>\5\bmap\1\0\2\20disable_on_zoom\1\14auto_save\fcurrent\nsetup\14Navigator\frequire\0", "config", "Navigator.nvim")
time([[Config for Navigator.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\1\2è\1\0\0\5\0\a\2\0264\0\0\0007\0\1\0%\1\2\0>\0\2\2\21\0\0\0\b\0\1\0T\1\17Ä4\1\0\0007\1\3\1%\2\2\0>\1\2\2\16\2\1\0007\1\4\1\16\3\0\0\16\4\0\0>\1\4\2\16\2\1\0007\1\5\1%\3\6\0>\1\3\2\v\1\0\0T\1\2Ä)\1\1\0T\2\1Ä)\1\2\0H\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\2\0;\0\1\3\0\4\0\0064\1\0\0007\1\1\0017\1\2\0017\2\3\0>\1\2\1G\0\1\0\tbody\20vsnip#anonymous\afn\bvim\2\0\1\a\1\f\1=4\1\0\0007\1\1\0017\1\2\1>\1\1\2\t\1\0\0T\1\14Ä4\1\0\0007\1\1\0017\1\3\0014\2\0\0007\2\4\0027\2\5\2%\3\6\0)\4\2\0)\5\2\0)\6\2\0>\2\5\2%\3\a\0>\1\3\1T\1(Ä4\1\0\0007\1\1\0017\1\b\1>\1\1\2\t\1\0\0T\1\14Ä4\1\0\0007\1\1\0017\1\3\0014\2\0\0007\2\4\0027\2\5\2%\3\t\0)\4\2\0)\5\2\0)\6\2\0>\2\5\2%\3\n\0>\1\3\1T\1\20Ä+\1\0\0>\1\1\2\15\0\1\0T\2\14Ä4\1\0\0007\1\1\0017\1\3\0014\2\0\0007\2\4\0027\2\5\2%\3\v\0)\4\2\0)\5\2\0)\6\2\0>\2\5\2%\3\n\0>\1\3\1T\1\2Ä\16\1\0\0>\1\1\1G\0\1\0\2¿\n<Tab>\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\6n\n<C-n>\27nvim_replace_termcodes\bapi\rfeedkeys\15pumvisible\afn\bvim\2õ\2\0\1\a\0\v\1+4\1\0\0007\1\1\0017\1\2\1>\1\1\2\t\1\0\0T\1\14Ä4\1\0\0007\1\1\0017\1\3\0014\2\0\0007\2\4\0027\2\5\2%\3\6\0)\4\2\0)\5\2\0)\6\2\0>\2\5\2%\3\a\0>\1\3\1T\1\22Ä4\1\0\0007\1\1\0017\1\b\1>\1\1\2\t\1\0\0T\1\14Ä4\1\0\0007\1\1\0017\1\3\0014\2\0\0007\2\4\0027\2\5\2%\3\t\0)\4\2\0)\5\2\0)\6\2\0>\2\5\2%\3\n\0>\1\3\1T\1\2Ä\16\1\0\0>\1\1\1G\0\1\0\5\28<Plug>(vsnip-jump-prev)\20vsnip#available\6n\n<C-p>\27nvim_replace_termcodes\bapi\rfeedkeys\15pumvisible\afn\bvim\2ì\a\1\0\v\0004\0T4\0\0\0%\1\1\0>\0\2\0024\1\0\0%\2\2\0>\1\2\0021\2\3\0007\3\4\0003\4\a\0007\5\1\0017\5\5\0057\5\6\5:\5\b\0043\5\t\0:\5\n\0043\5\v\0:\5\f\0043\5\14\0001\6\r\0:\6\15\5:\5\16\0042\5\4\0003\6\17\0;\6\1\0053\6\18\0;\6\2\0053\6\19\0;\6\3\5:\5\20\0043\5\23\0007\6\21\0007\6\22\6'\a¸ˇ>\6\2\2:\6\24\0057\6\21\0007\6\22\6'\a\4\0>\6\2\2:\6\25\0057\6\21\0007\6\26\6'\a¸ˇ>\6\2\2:\6\27\0057\6\21\0007\6\28\6'\a\4\0>\6\2\2:\6\29\0057\6\21\0007\6\30\6>\6\1\2:\6\31\0057\6\21\0007\6 \6>\6\1\2:\6!\0057\6\21\0007\6\"\0063\a%\0007\b#\0007\b$\b:\b&\a>\6\2\2:\6'\0051\6(\0:\6)\0051\6*\0:\6+\5:\5\21\4>\3\2\0014\3,\0%\4-\0%\5.\0%\6/\0%\a0\0%\b1\0%\t2\0%\n3\0$\6\n\6>\3\4\0010\0\0ÄG\0\1\0\t } }+{ name = 'look', max_item_count = 10 }\24{ name = 'emoji' },-{ name = 'spell', max_item_count = 10 },1lua require'cmp'.setup.buffer { sources = { \23gitcommit,markdown\rfiletype\aau\f<S-Tab>\0\n<Tab>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-p>\21select_next_item\n<C-n>\21select_prev_item\n<C-f>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsources\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\fsnippet\vexpand\1\0\0\0\17experimental\1\0\1\15ghost_text\2\15completion\1\0\1\16completeopt\26menu,menuone,noinsert\14preselect\1\0\0\tItem\18PreselectMode\nsetup\0\14cmp.types\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: quick-scope
time([[Config for quick-scope]], true)
try_loadstring("\27LJ\1\2:\0\0\2\0\3\0\0044\0\0\0003\1\2\0:\1\1\0G\0\1\0\1\5\0\0\6f\6F\6t\6T\25qs_highlight_on_keys\6g\0", "config", "quick-scope")
time([[Config for quick-scope]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file CodeActionMenu lua require("packer.load")({'nvim-code-action-menu'}, { cmd = "CodeActionMenu", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'vim-startuptime'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType slime ++once lua require("packer.load")({'vim-slim'}, { ft = "slime" }, _G.packer_plugins)]]
vim.cmd [[au FileType slimleex ++once lua require("packer.load")({'vim-slim'}, { ft = "slimleex" }, _G.packer_plugins)]]
vim.cmd [[au FileType slim ++once lua require("packer.load")({'vim-slim'}, { ft = "slim" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/vtm/.local/share/nvim/site/pack/packer/opt/vim-slim/ftdetect/slim.vim]], true)
vim.cmd [[source /home/vtm/.local/share/nvim/site/pack/packer/opt/vim-slim/ftdetect/slim.vim]]
time([[Sourcing ftdetect script at: /home/vtm/.local/share/nvim/site/pack/packer/opt/vim-slim/ftdetect/slim.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
