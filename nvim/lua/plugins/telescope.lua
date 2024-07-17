return {
    'nvim-telescope/telescope.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim',
        {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
        {'nvim-telescope/telescope-live-grep-args.nvim'},
        'benfowler/telescope-luasnip.nvim'
    },
    cmd = {'Telescope'},
    keys = {
        {'<C-p>', function() require('telescope.builtin').git_files() end}, {
            '<C-q>', function()
                require('telescope.builtin').find_files({
                    hidden = true,
                    shorten_path = true,
                    no_ignore = true
                })
            end
        }, {
            '<Leader>\'', function()
                require('telescope').extensions.live_grep_args.live_grep_args()
            end, {noremap = true, expr = true}
        }, {'L', function() require('telescope.builtin').grep_string() end}, {
            '<Leader>b', function()
                require('telescope.builtin').buffers({sort_lastused = true})
            end
        }, {
            '<Leader>h',
            function()
                require('telescope.builtin').oldfiles({cwd_only = true})
            end
        }
    },
    config = function()
        local telescope = require('telescope')
        telescope.setup({
            defaults = {
                path_display = {"short"},
                vimgrep_arguments = {
                    "rg", "--color=never", "--no-heading", "--with-filename",
                    "--line-number", "--column", "--hidden", "--smart-case"
                },
                layout_strategy = 'flex',
                layout_config = {
                    vertical = {width = 0.99},
                    horizontal = {width = 0.99}
                },
                mappings = {
                    i = {
                        ['<C-q>'] = function()
                            require('telescope.actions').send_selected_to_qflist()
                        end
                    }
                }
            },
            extensions = {
                fzf = {
                    fuzzy = true, -- false will only do exact matching
                    override_generic_sorter = true, -- override the generic sorter
                    override_file_sorter = true, -- override the file sorter
                    case_mode = 'smart_case' -- or "ignore_case" or "respect_case"
                    -- the default case_mode is "smart_case"
                }
            }
        })
        telescope.load_extension('live_grep_args')
        telescope.load_extension('fzf')
        telescope.load_extension('luasnip')
        vim.cmd('cnoreabbrev tel Telescope')
        vim.cmd('hi TelescopeBorder guibg=none')
    end
}
