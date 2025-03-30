local function get_pubspec_version(file_path)
	local file = io.open(file_path, "r")
	if not file then
		return nil, "Could not open file: " .. file_path
	end

	local content = file:read("*all")
	file:close()

	-- Match the version field in the pubspec.yaml file
	local version = content:match("version:%s*([%d%.%+%-]+)")
	if version then
		return version
	else
		return nil, "Version not found in pubspec.yaml"
	end
end

local function get_version()
	return get_pubspec_version("pubspec.yaml")
end

require("lualine").setup({
	sections = {
		lualine_x = { get_version, "filetype" },
	},
})

vim.api.nvim_create_user_command("FlutterPubGet", function()
	vim.cmd("!flutter pub get")
end, {})

-- create autocommand to flutter pub get
vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "pubspec.yaml",
	callback = function()
		vim.cmd("FlutterPubGet")
	end,
})
