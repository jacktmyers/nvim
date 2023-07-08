local dap = require("dap")

--> CPP Setup
dap.adapters.cppdbg = {
	id = "cppdbg",
	type = "executable",
	command = "/home/jack/.config/nvim/cpptools/extension/debugAdapters/bin/OpenDebugAD7"
}
dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopAtEntry = true,
  },
}

local dapUI = require("dapui")
dapUI.setup()

local dapProjects = require('nvim-dap-projects')
dapProjects.search_project_config()
