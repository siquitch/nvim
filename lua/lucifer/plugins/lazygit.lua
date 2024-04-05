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
        {'<leader>lg', vim.cmd.LazyGit, desc = 'Open LazyGit'},
    }
}
