return {
	"stevearc/dressing.nvim",
	name = "dressing",
    config = function ()
        require('dressing').setup({
            input = {
                start_in_insert = false,
            }
        })
    end
}
