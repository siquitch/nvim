return {
	"stevearc/dressing.nvim",
	name = "dressing",
    config = function ()
        require('dressing').setup({
            input = {
                insert_only = false,
                start_in_insert = false,
            }
        })
    end
}
