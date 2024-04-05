return {
    'kdheepak/lazygit.nvim',
    cmd = {
        'LazyGit',
        'LazyGitConfig',
        'LazyGitCurrentFile',
        'LazyGitFilter',
        'LazyGitFilterCurrentFile',
    },
    dependencies = {
        'plenary'
    },
    keys = {
        {'<leader>lg', '<cmd>LazyGit<cr>', desc = 'Open LazyGit'},
        {'<leader>lf', '<cmd>LazyGitCurrentFile<cr>', desc = 'Open LazyGit Config'},
    }
}
