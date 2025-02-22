if vim.fn.filereadable(vim.fn.getcwd() .. "/pubspec.yaml") == 1 then
    local cmd = vim.fn.stdpath"config" .. "/custom_configs/flutter_config.lua"
    vim.cmd('luafile' .. cmd)
end
