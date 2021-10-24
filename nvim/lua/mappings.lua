for _, mappings in pairs(
    {
        {"n", "<c-w>", ":w<cr>"},
        -- {"n", "<C-q>", "ZZ"}, -- write and exit from current buffer
        {"n", "Y", "y$"}, -- do Y to yank till the end of the line
        {"n", "Q", "@q"},
        -- split and navigate to it
        {"n", "<shift><up>", ":bn"},
        {"n", "<shift><down>", ":bp"},
        {"n", "<leader>-", ":split | wincmd j<cr>"},
        {"n", "<leader>|", ":vsplit | wincmd l<cr>"},
        {"n", "zl", "zo"}, -- remap zl back to zo
        -- replace selected
        {"n", "R", ":%s///gI<left><left><left>"},
        {"n", "a", "len(getline('.')) == 0 ? 'S' : 'a'", { expr = true }},
        {"n", "Q", "q:dd"},
        {"i", "{<cr>", "{<esc>o}<esc>O"}
    }
) do
    local mode = mappings[1]
    local key = mappings[2]
    local value = mappings[3]
    local options = mappings[4]
    map(mode, key, value, options)
end

cmd("cnoreabbrev W noa w")
cmd("cnoreabbrev WA noa wa")
map("n", "<leader>1", "1gt")
map("n", "<leader>2", "2gt")
map("n", "<leader>3", "3gt")
map("n", "<leader>s", ":update<cr>")
map("n", "<leader>S", ":wq<cr>")
map("n", "<leader>q", ":quit<cr>")
map("n", "<leader>Q", ":quit!<cr>")
map("n", "<leader>D", ":call pry#insert()<CR>")
map("n", "<leader>p", ":set paste<CR><esc>\"+p: set nopaste<cr>")
map("n", "<leader>P", ":set paste<CR><esc>o<Esc>\"+p: set nopaste<cr>")
map("n", "<leader>d", "\"_d")
map("n", "<leader>o", "o<esc>k")
map("n", "<leader>O", "O<esc>j")

map("v", "<leader>d", "\"_d")
map("v", "<leader>y", "\"+y")
