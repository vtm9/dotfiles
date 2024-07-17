for _, mappings in pairs({

    {"n", "<leader>1", "1gt"},
    {"n", "<leader>2", "2gt"},
    {"n", "<leader>3", "3gt"},
    {"n", "<leader>s", ":update<cr>"},
    {"n", "<leader>S", ":wq<cr>"},
    {"n", "<leader>q", ":quit<cr>"},
    {"n", "<leader>Q", ":quit!<cr>"},
    {"n", "<leader>o", "o<esc>k"},
    {"n", "<leader>O", "O<esc>k"},
    {"n", "ae", "<Plug>(textobj-entire-a)"},
    {"n", "ie", "<Plug>(textobj-entire-i)"},
    {"n", "ga", "<Plug>(EasyAlign)"},
    {{'x', 'o'}, "ga", "<Plug>(EasyAlign)"},
    {"n", "<C-n>", ":Neotree reveal<CR>"},
    {"n", "<Leader>f", ":%s///g<Left><Left>"},
    {"n", "<Leader>=", ":exe 'resize ' . (winheight(0) * 3/2)<CR>"},
    {"n", "<Leader>-", ":exe 'resize ' . (winheight(0) * 2/3)<CR>"},
    {"n", "<Leader>0", ":exe 'vertical resize ' . (winwidth(0) * 3/2)<CR>"},
    {"n", "<Leader>9", ":exe 'vertical resize ' . (winwidth(0) * 2/3)<CR>"},
    {"n", "<Leader>8", ":set invnumber<CR>"},

    {"n", "<Leader>gb", ":GBrowse<CR>"},
    {"n", "<Leader>gs", ":Git status<CR>"},
    {"n", "<Leader>gd", ":Git diff origin/master<CR>"},

    {"n", "<Leader>gv", ":GV!<CR>"},
    {"n", "<Leader>r", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>"},
    {"v", "<Leader>pr", "<cmd>lua require('spectre').open_visual()<CR>"},

    {'n', 'f', '<Plug>(leap)'},
    {'n', 'F', '<Plug>(leap-from-window)'},
    {{'x', 'o'}, 'f', '<Plug>(leap-forward)'},
    {{'x', 'o'}, 'F', '<Plug>(leap-backward)'}, -- {'n', '<c-w>', ':w<cr>'},
    -- {'n', '<C-q>', 'ZZ'}, -- write and exit from current buffer
    {'n', 'Y', 'y$'}, -- do Y to yank till the end of the line
    -- split and navigate to it
    {'n', '<up>', ':bn<cr>'},
    {'n', '<down>', ':bp<cr>'},
    {'n', '<leader>-', ':split | wincmd j<cr>'},
    {'n', '<leader>|', ':vsplit | wincmd l<cr>'},
    {'n', 'zl', 'zo'}, -- remap zl back to zo
    -- replace selected
    -- {'n', 'R', ':%s///gI<left><left><left>'},
    -- if press 'a' no empty line it should respect indent
    {'n', 'a', 'len(getline(\'.\')) == 0 ? \'S\' : \'a\'', {expr = true}},
    -- show last commands list on last item
    {'n', 'Q', 'q:dd'},
    {'n', '<Leader>;', ':Telescope grep_string search='},

    {'n', '<leader>l', ':FormatWrite<CR>'}, -- map to drop into { } block
    --  {"i", "{<cr>", "{}<left><cr><esc>O"},
    --  {"i", "{<space>", "{}<left><space><left><space>"},
    --  {"i", "(<cr>", "()<left><cr><esc>O"},
    --  {"i", "(<space>", "()<left><space><left><space>"},
    --  {"i", "({<space>", "({})<left><left><space><left><space>"},
    --  {"i", "({<cr>", "({})<left><left><cr><esc>O"},
    -- jump with  and stay cursor in center of the screen
    -- {"n", "*", "*zz", { noremap = true }},
    -- {"n", "n", "nzz", { noremap = true }},
    -- {"n", "N", "Nzz", { noremap = true }},
    {
        'n', 'n', function()
            vim.cmd('norm! nzz')
            vim.opt.hlsearch = true
            vim.defer_fn(function() vim.opt.hlsearch = false end, 200)
        end, {noremap = true, remap = true}
    }, {
        'n', 'N', function()
            vim.cmd('norm! Nzz')
            vim.opt.hlsearch = true
            vim.defer_fn(function() vim.opt.hlsearch = false end, 200)
        end, {noremap = true, remap = true}
    }, {
        'n', '*', function()
            vim.cmd('norm! *zz')
            vim.opt.hlsearch = true
            vim.defer_fn(function() vim.opt.hlsearch = false end, 200)
        end, {noremap = true, remap = true}
    }, -- stay cursor on place when 'J'
    --  {"n", "J", "mzJ`z"},
    -- do not yank on x/X
    {'n', 'x', '"_dl'}, {'n', 'X', '"_dh'}, -- magic search mappnigs
    {'v', ':s/', ':s/\\v', {noremap = true}},
    {'c', '%s/', '%s/\\v', {noremap = true}},
    {'c', '%s/', '%s/\\v', {noremap = true}}, {
        'n', '<c-a>', function()
            local word_under_cursor = vim.fn.expand('<cword>')
            if word_under_cursor == 'true' then
                vim.cmd('normal ciwfalse')
                return
            elseif word_under_cursor == 'false' then
                vim.cmd('normal ciwtrue')
                return
            end
            vim.cmd('normal! ')
        end, {noremap = true}
    }
}) do
    local mode = mappings[1]
    local key = mappings[2]
    local value = mappings[3]
    local options = mappings[4] or {silent = true}
    vim.keymap.set(mode, key, value, options)
end
