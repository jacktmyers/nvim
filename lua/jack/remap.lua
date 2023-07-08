vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fs", vim.cmd.Ex)

--> Multiwindow maps
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<", "<C-w><",{remap=true})
vim.keymap.set("n", ">", "<C-w>>",{remap=true})
vim.keymap.set("n", "<leader>v", "<C-w>v")
vim.keymap.set("n", "<leader>s", "<C-w>s")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "+", "<C-w>+",{remap=true})
vim.keymap.set("n", "_", "<C-w>-",{remap=true})

--> So I don't break my pinky
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<leader>w", vim.cmd.w)

--> Trouble
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true})

--> Quick jumping
vim.keymap.set("n", "<C-j>", "<PageDown>")
vim.keymap.set("n", "<C-k>", "<PageUp>")
vim.keymap.set('n', '<C-h>', '<S-^>', { remap = true })
vim.keymap.set('n', '<C-l>', '<S-$>', { remap = true })

--> Quick exiting
vim.keymap.set("n", "<leader>fj<leader>", vim.cmd.q)

--> Exiting the terminal
vim.keymap.set("t", "jk", "<C-\\><C-n>")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

--> To make windows HUGE
vim.keymap.set("n", "<leader>b", vim.cmd.MaximizerToggle);

--> Debug stuff
DebugMode = false
vim.keymap.set("n", "<leader>bp", function()
	if(DebugMode) then
		require("dap").toggle_breakpoint()
	end
end)
vim.keymap.set("n", "<leader>so", function()
	if(DebugMode) then
		require("dap").step_over()
	end
end)
vim.keymap.set("n", "<leader>si", function()
	if(DebugMode) then
		require("dap").step_into()
	end
end)
vim.keymap.set("n", "<leader>so", function()
	if(DebugMode) then
		require("dap").step_out()
	end
end)
vim.keymap.set("n", "<leader>dc", function()
	if(DebugMode) then
		require("dap").continue()
	end
end)
vim.keymap.set("n", "<leader>db", function()
	require("dapui").toggle()
	if(DebugMode) then
		require("dap").terminate()
		require("dap").clear_breakpoints()
		DebugMode = false
	else
		require("dap").continue()
		DebugMode = true
	end
end)

