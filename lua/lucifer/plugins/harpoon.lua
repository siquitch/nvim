return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'plenary' },
    config = function()
        require('harpoon'):setup()
    end,
    keys = function()
        local harpoon = require('harpoon')
        return {
            {
                '<leader>a',
                function() harpoon:list():add() end,
                desc = 'harpoon add',
            },
            {
                '<C-e>',
                function()
                    harpoon.ui:toggle_quick_menu(harpoon:list())
                end,
                desc = 'harpoon quick menu',
            },
            { '<C-h>', function() harpoon:list():select(1) end, desc = 'harpoon to file 1', },
            { '<C-t>', function() harpoon:list():select(2) end, desc = 'harpoon to file 2', },
            { '<C-n>', function() harpoon:list():select(3) end, desc = 'harpoon to file 3', },
            { '<C-s>', function() harpoon:list():select(4) end, desc = 'harpoon to file 4', },
        }
    end,
}
