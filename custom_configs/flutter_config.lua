-- For flutter status line
local function getVersion()
    local version = vim.g.flutter_tools_decorations or {}
    if version['app_version'] == nil then return '' end
    return version['app_version']
end

local function getConfig()
    local config = vim.g.flutter_tools_decorations or {}
    if config['project_config']['name'] == nil then return '' end
    return config['project_config']['name']
end

require('lualine').setup {
    sections = {
        lualine_c = { 'filename', getConfig },
        lualine_x = { getVersion, 'filetype' }
    }
}
