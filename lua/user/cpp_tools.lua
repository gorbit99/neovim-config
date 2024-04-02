local function create_header_source_pair()
	if vim.bo.filetype ~= "cpp" then
		return
	end

	local current_file = vim.fn.expand("%")
	local current_file_extension = vim.fn.expand("%:e")

	if current_file_extension == "h" then
		local source_file = string.gsub(current_file, ".h$", ".cpp")
		print(source_file)
		vim.cmd("e " .. source_file)
	elseif current_file_extension == "cpp" then
		local header_file = string.gsub(current_file, ".cpp$", ".h")
		vim.cmd("e " .. header_file)
	end
end

local function create_commands()
	vim.api.nvim_create_user_command("CppHeaderSourcePair", create_header_source_pair, {
		desc = "Create a header/source pair",
	})
end

vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = "cpp",
	callback = create_commands,
})
