local dap = require('dap')

-- Define adapters
dap.adapters.cpp = {
    type = 'executable',
    name = 'cppdbg',
    command = 'lldb-vscode',
    args = {},
}

-- Define configurations
dap.configurations.cpp = {
    {
        name = 'Launch',
        type = 'cpp',
        request = 'launch',
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        args = {},
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        runInTerminal = false,
    },
}

dap.adapters.python = {
    type = 'executable',
    command = 'python',
    args = { '-m', 'debugpy.adapter' },
}

dap.configurations.python = {
    {
        type = 'python',
        request = 'launch',
        name = "Launch file",
        program = "${file}",
        pythonPath = function()
            return '/path/to/your/virtualenv/bin/python'
        end,
    },
}




-- Add keymap for starting debugging
vim.api.nvim_set_keymap('n', '<Leader>z', [[:lua require'dap'.run_last()<CR>]], { noremap = true, silent = true })

-- Check if there are any valid configurations before calling dap.run_last()
function check_dap_run_last()
    if next(dap.configurations) ~= nil then
        dap.run_last()
    else
        print("No valid configurations found.")
    end
end

-- Optionally, use a different keymap to call check_dap_run_last()
vim.api.nvim_set_keymap('n', '<Leader>r', [[:lua check_dap_run_last()<CR>]], { noremap = true, silent = true })
