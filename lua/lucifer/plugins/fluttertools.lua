return {
	"akinsho/flutter-tools.nvim",
	lazy = false,
	dependencies = {
		"plenary",
		"dressing",
	},
	opts = {
		decorations = {
			statusline = {
				app_version = true,
				device = true,
				project_config = true,
			},
		},
		lsp = {
			color = { enabled = true },
			settings = {
				renameFilesWithClasses = "always",
			},
		},
	},
	keys = {
		{
			"<leader>rr",
			"<cmd>FlutterRun<cr>",
			desc = "Flutter run",
		},
		{
			"<leader>rd",
			"<cmd>FlutterDevices<cr>",
			desc = "Flutter devices",
		},
		{
			"<leader>re",
			"<cmd>FlutterEmulators<cr>",
			desc = "Flutter emulators",
		},
		{
			"<leader>rs",
			"<cmd>FlutterRestart<cr>",
			desc = "Flutter restart",
		},
		{
			"<leader>rw",
			"<cmd>FlutterLogClear<cr>",
			desc = "Clear logs",
		},
		{
			"<leader>rg",
			"<cmd>FlutterPubGet<cr>",
			desc = "Flutter pub get",
		},
		{
			"<leader>ro",
			"<cmd>FlutterOutlineToggle<cr>",
			desc = "Flutter toggle outline",
		},
		{
			"<leader>rl",
			"<cmd>FlutterReanalyze<cr>",
			desc = "Flutter reload lsp",
		},
		{
			"<leader>rq",
			"<cmd>FlutterQuit<cr>",
			desc = "Flutter quit",
		},
	},
}
