local function fillSpacesToFixed(str, untilLength)
    local untilFixed = untilLength - string.len(str)
    local postfix = ''
    for i = 1, untilFixed, 1 do postfix = postfix .. ' ' end
    return str .. postfix
end

local format = function(entry, vim_item)
    local menuMapping = {
        buffer = '|buf|',
        copilot = '|cp|',
        path = '|pth|',
        nvim_lua = '|vim|',
        nvim_lsp = ' |lsp|',
        luasnip = '|snp|'
    }
    local prettySourceName = menuMapping[entry.source.name]

    if prettySourceName == nil then
        -- text buff like git commit or so
        vim_item.menu = prettySourceName
    else
        -- buffers with code mostly
        vim_item.menu = '|' .. fillSpacesToFixed(vim_item.kind, 8) ..
                            prettySourceName
    end

    vim_item.kind = require('lspkind').symbolic(vim_item.kind,
                                                {with_text = false})
    return vim_item
end
local has_words_before = function()
    if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then
        return false
    end
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and
               vim.api.nvim_buf_get_text(0, line - 1, 0, line - 1, col, {})[1]:match(
                   "^%s*$") == nil
end

return {
    'hrsh7th/nvim-cmp',
    enabled = true,
    event = 'VeryLazy',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp', 
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'saadparwaiz1/cmp_luasnip',
        -- 'octaltree/cmp-look',
        'hrsh7th/cmp-emoji',
        'onsails/lspkind-nvim'
    },
    config = function()
        local cmp = require('cmp')
        cmp.setup({
            sorting = {
                priority_weight = 2,
                comparators = {
                    require("copilot_cmp.comparators").prioritize,

                    -- Below is the default comparitor list and order for nvim-cmp
                    cmp.config.compare.offset,
                    -- cmp.config.compare.scopes, --this is commented in nvim-cmp too
                    cmp.config.compare.exact, cmp.config.compare.score,
                    cmp.config.compare.recently_used,
                    cmp.config.compare.locality, cmp.config.compare.kind,
                    cmp.config.compare.sort_text, cmp.config.compare.length,
                    cmp.config.compare.order
                }
            },
            completion = {completeopt = 'menu,menuone,noinsert'},
            formatting = {fields = {'kind', 'abbr', 'menu'}, format = format},
            window = {
                completion = {
                    border = {
                        '╭', '─', '╮', '│', '╯', '─', '╰', '│'
                    },
                    winhighlight = 'Normal:CmpPmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None',
                    scrollbar = '║'
                },
                documentation = {
                    border = {
                        '─', '─', '╮', '│', '╯', '─', '─', '→'
                    }
                }
            },
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end
            },
            mapping = cmp.mapping.preset.insert({
                ["<Tab>"] = vim.schedule_wrap(function(fallback)
                    if cmp.visible() and has_words_before() then
                        cmp.select_next_item({
                            behavior = cmp.SelectBehavior.Select
                        })
                    else
                        fallback()
                    end
                end),
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({select = true}) -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            }),
            sources = cmp.config.sources({
                -- Copilot Source
                {name = "copilot", group_index = 2}, -- Other Sources
                {name = "nvim_lsp", group_index = 2},
                {name = "path", group_index = 2},
                {name = "buffer", group_index = 2},
                {name = "luasnip", group_index = 2}
                -- {name = 'nvim_lsp'},
                -- -- {name = 'nvim_lua'},
                -- -- {name = 'luasnip'},
                -- {name = 'buffer'},
                -- {name = 'path'}
            }),
            experimental = {ghost_text = {hl_group = 'LspCodeLens'}}
        })

        -- cmp.setup.filetype({'gitcommit', 'markdown', 'octo'}, {
        --     sources = {{name = 'look', keyword_length = 4, max_item_count = 10}}
        -- })

        cmp.setup.filetype('lua', {
            sources = {
                {
                    name = 'nvim_lua',
                    trigger_characters = {'.'},
                    max_item_count = 20
                }
            }
        })

        -- cmp.setup.filetype({'octo', 'markdown'},
        --                    {sources = cmp.config.sources({{name = 'emoji'}})})

    end
}
