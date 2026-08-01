local M = {}

local function is_vite_project(dir)
	local pkg = dir .. "/package.json"
	local lock = dir .. "/pnpm-lock.yaml"
	if vim.fn.filereadable(pkg) == 0 or vim.fn.filereadable(lock) == 0 then
		return false
	end
	local content = table.concat(vim.fn.readfile(pkg), "\n")
	return content:find('"vite"') ~= nil
end

local function find_vite_projects(cwd)
	cwd = cwd or vim.fn.getcwd()
	local projects = {}
	local handle = vim.loop.fs_scandir(cwd)
	if not handle then
		return projects
	end
	while true do
		local name, type = vim.loop.fs_scandir_next(handle)
		if not name then
			break
		end
		if type == "directory" then
			local dir = cwd .. "/" .. name
			if is_vite_project(dir) then
				table.insert(projects, dir)
			end
		end
	end
	return projects
end

local function run_build(dir, callback)
	local lines = {}
	local function onexit()
		callback(vim.trim(table.concat(lines, "\n")))
	end
	local job = vim.fn.jobstart({ "npm", "run", "build" }, {
		cwd = dir,
		on_stdout = function(_, data)
			if data then
				vim.list_extend(lines, data)
			end
		end,
		on_stderr = function(_, data)
			if data then
				vim.list_extend(lines, data)
			end
		end,
		on_exit = onexit,
	})
	if job <= 0 then
		vim.notify("Failed to start pnpm build in " .. dir, vim.log.levels.ERROR)
		callback("")
	end
end

function M.build_all(cwd)
	cwd = cwd or vim.fn.getcwd()
	local projects = find_vite_projects(cwd)
	if #projects == 0 then
		vim.notify("No pnpm + vite projects found", vim.log.levels.WARN)
		return
	end
	vim.notify("Building " .. #projects .. " vite project(s)...")
	local count = 0
	for _, dir in ipairs(projects) do
		run_build(dir, function(output)
			count = count + 1
			local name = vim.fn.fnamemodify(dir, ":t")
			if output and output ~= "" then
				vim.notify(string.format("[%s] %s", name, output))
			else
				vim.notify(string.format("[%s] done", name))
			end
			if count == #projects then
				vim.notify("All vite builds complete")
			end
		end)
	end
end

vim.api.nvim_create_user_command("ViteBuild", function()
	M.build_all()
end, {})

return M
