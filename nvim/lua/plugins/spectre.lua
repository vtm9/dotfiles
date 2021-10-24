return function()
    require('spectre').setup({

      color_devicons = true,
      line_sep_start = '┌-----------------------------------------',
      result_padding = '¦  ',
      line_sep       = '└-----------------------------------------',
      highlight = {
          ui = "String",
          search =  "DiffDelete",
          replace ="DiffChange",
      },
    })
    map("n", "<leader>r", 'viw:lua require("spectre").open_visual()<CR>', {})
    map("n", "<leader>R", '<cmd>lua require("spectre").open()<CR>', {})
    -- map("n", "<leader>f", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {})
-- nnoremap <leader>S :lua require('spectre').open()<CR>

-- "search current word
-- nnoremap <leader>sw :lua require('spectre').open_visual({select_word=true})<CR>
-- vnoremap <leader>s :lua require('spectre').open_visual()<CR>
end
