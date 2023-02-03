return function()
    map(
        "n",
        "<c-n>",
        ":lua if ft() == 'NvimTree' or ft() == 'startify' then vim.cmd('NvimTreeToggle') else vim.cmd('NvimTreeFindFileToggle') end<cr>"
    )
    g.nvim_tree_side = "left"
    g.nvim_tree_width = 30
    g.nvim_tree_allow_resize = 1


    require "nvim-tree".setup {
        disable_netrw = false,
        git = {
            ignore = false
        },
        filters = {
            dotfiles = false
        },
        renderer = {
            highlight_git = true,
            icons = {
                show = { git = true, folder = true, file = true },
                glyphs = {
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
            },
        }
    }
end
