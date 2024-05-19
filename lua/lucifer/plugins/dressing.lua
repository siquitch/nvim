return {
	"stevearc/dressing.nvim",
	name = "dressing",
    config = function ()
        require('dressing').setup({
            input = {
                insert_only = false,
            }
        })
    end
}
