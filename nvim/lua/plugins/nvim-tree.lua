return function()
    map(
        "n",
        "<c-n>",
        ":lua if ft() == 'NvimTree' or ft() == 'startify' then vim.cmd('NvimTreeToggle') else vim.cmd('NvimTreeFindFileToggle') end<cr>"
    )
    g.nvim_tree_side = "left"
    g.nvim_tree_width = 30
    g.nvim_tree_git_hl = 1
    g.nvim_tree_allow_resize = 1
    g.nvim_tree_show_icons = {git = 1, folders = 1, files = 1}
    g.nvim_tree_icons = {
        default = "",
        symlink = "",
        git = {
            unstaged = "✗",
            staged = "✓",
            unmerged = "",
            renamed = "➜",
            untracked = "★"
        },
        folder = {
            default = "",
            open = ""
        }
    }
    require "nvim-tree".setup {
        open_on_setup = false,
        disable_netrw = false
    }
end

