return function()
    require('telescope').setup {
    -- file_previewer = require'telescope.previewers'.cat.new,
    -- extensions = {
    --     fzf = {
    --     fuzzy = true,                    -- false will only do exact matching
    --     override_generic_sorter = true,  -- override the generic sorter
    --     override_file_sorter = true,     -- override the file sorter
    --     case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    --                                     -- the default case_mode is "smart_case"
    --     }
    -- }
    }
    -- To get fzf loaded and working with telescope, you need to call
    -- load_extension, somewhere after setup function:
    require('telescope').load_extension('fzf')

    local horizontalLayoutConfig =
        "layout_strategy='horizontal',layout_config={width=0.9, height=0.9, mirror=false, preview_width=0.6}"
    local verticalLayoutConfig = "layout_strategy='vertical',layout_config={width=0.9, height=0.9}"


    function grep_prompt_visual()
    -- grep for things prompt, then fuzzy find the file
    local search_word = vim.fn.VisualSelection()
    require("telescope.builtin").grep_string {
        layout_strategy='horizontal',
        layout_config={width=0.9, height=0.9, mirror=false, preview_width=0.6},
        prompt_title = "Grepped for '" .. search_word .. "'",
        search = vim.fn.input("Grep String > ", search_word),
    }
    end

    map("v", "K", "<CMD>lua grep_prompt_visual()<CR><CR>")
    map("n", "<c-p>", "<CMD>lua require('telescope.builtin').git_files({" .. horizontalLayoutConfig .. "})<CR>")
    map("n", "gh", "<CMD>lua require('telescope.builtin').oldfiles({" .. horizontalLayoutConfig .. "})<CR>")
    map("n", "<leader>h", "<CMD>lua require('telescope.builtin').oldfiles({" .. horizontalLayoutConfig .. "})<CR>")
    map(
        "n",
        "<c-q>",
        "<CMD>lua require('telescope.builtin').find_files({hidden=true,no_ignore=true," ..
            horizontalLayoutConfig .. "})<CR>"
    )

    map("n", "gl", "<CMD>lua require('telescope.builtin').live_grep({" .. verticalLayoutConfig .. "})<CR>")
    map(
        "n",
        "gL",
        "<CMD>lua require('telescope.builtin').live_grep({additional_args=function(options) return {'--hidden', '--no-ignore'} end," ..
            verticalLayoutConfig .. "})<CR>"
    )


    map("n", "go", "<CMD>lua require('telescope.builtin').grep_string({" .. horizontalLayoutConfig .. "})<CR>")
    map(
        "n",
        "gO",
        "<CMD>lua require('telescope.builtin').grep_string({additional_args=function(options) return {'--hidden', '--no-ignore'} end," ..
            verticalLayoutConfig .. "})<CR>"
    )

    map(
        "n",
        "<leader>b",
        "<CMD>lua require('telescope.builtin').buffers({sort_lastused=true," .. horizontalLayoutConfig .. "})<CR>"
    )

    map("n", "gr", "<CMD>lua require('telescope.builtin').resume()<CR>")
end

