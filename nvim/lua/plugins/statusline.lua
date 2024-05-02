local util = require('util')
return {
    'freddiehaddad/feline.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons', 'lewis6991/gitsigns.nvim'},
    config = function() require('feline').setup() end



}
