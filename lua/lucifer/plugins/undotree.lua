return {
    'mbbill/undotree',
    name = 'undotree',
    keys = {
        {
            '<leader>z',
            vim.cmd.UndotreeToggle,
            desc = 'Toggle undo tree',
        },
    },
}
