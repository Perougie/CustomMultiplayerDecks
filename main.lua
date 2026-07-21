local function LoadFiles(name, fileList, folderName)
	for _, file in ipairs(fileList) do
		assert(SMODS.load_file("src/" .. folderName .. "/" .. string.lower(name) .. "/" .. file))()
	end
end

local function LoadFolder(folderName)
	local folders = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/" .. folderName)
	for index, folder in ipairs(folders) do
		LoadFiles(
			folder,
			SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/" .. folderName .. "/" .. folder),
			folderName
		)
	end
end

--[[
LoadFiles("Misc", SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/misc"))
LoadFiles("Jokers", SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/jokers"))
LoadFiles("Programs", SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/programs"))
LoadFiles("Rarities", SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/rarities"))
LoadFiles("Tarots", SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/tarots"))
LoadFiles("Boosters", SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/boosters"))
LoadFiles("Editions", SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/editions"))
LoadFiles("Backs", SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/backs"))
]]

LoadFolder("hooks")
LoadFolder("objects")
