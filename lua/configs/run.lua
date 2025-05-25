local RunFile = function()
	local ft = vim.bo.filetype
	if ft == "python" then
		vim.cmd("!python3 %")
	elseif ft == "dockerfile" then
		vim.cmd("!docker-buildx build -t rnd123 -f % .")
	elseif ft == "kotlin" then
		vim.cmd("!gradle compileKotlin")
	elseif ft == "lua" then
		vim.cmd("luafile %")
	elseif ft == "javascript" then
		vim.cmd("!node %")
	elseif ft == "typescript" then
		vim.cmd("!ts-node %")
	elseif ft == "sh" then
		vim.cmd("!bash %")
	else
		print("No run command configured for filetype: " .. ft)
	end
end

vim.keymap.set('n', '<leader>r', RunFile, {})
