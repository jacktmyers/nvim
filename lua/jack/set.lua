vim.o.wrap=false
vim.o.autoindent=true

local tabSpace = 2
vim.o.tabstop=tabSpace
vim.o.shiftwidth=tabSpace
vim.o.number=1
vim.o.relativenumber=1
vim.opt.spell = true
vim.opt.spelllang = "en_us"
vim.o.ignorecase = true
vim.o.smartcase = true
vim.opt.clipboard = 'unnamedplus'

-- autocmd for translating sass files
vim.api.nvim_create_autocmd("BufWritePost",{
	pattern = "*\\.scss",
	callback = function()
		vim.schedule(RunSass)
	end,
	}
)

vim.api.nvim_create_autocmd("TermOpen",{
	callback = function()
		vim.opt_local.spell = false
	end,
	}
)

-- stupid ass callback function for running sass
function RunSass()
	local fileDir = vim.fn.expand("%:p:h")
	local fileName = vim.fn.expand("%:t")
	local stripExtension = "(.*)%."
	local start,stop = string.find(fileName, stripExtension)
	local strippedName = string.sub(fileName,start,stop-1)
	vim.cmd("silent! !sass "..fileDir.."/"..fileName.." "..fileDir.."/"..strippedName..".css")
end

vim.diagnostic.config({virtual_text = {
	spacing = 0
}})
