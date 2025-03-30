if vim.fn.filereadable(vim.fn.getcwd() .. "/pubspec.yaml") == 1 then
	local cmd = vim.fn.stdpath("config")
	local os = vim.loop.os_uname().sysname
	local is_windows = string.find(os, "Windows") ~= nil
	if is_windows then
		cmd = cmd .. "\\custom_configs\\flutter_config.lua"
	else
		cmd = cmd .. "/custom_configs/flutter_config.lua"
	end
	vim.cmd("luafile " .. cmd)
end
