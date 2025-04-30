SMODS.Atlas {
    key = "Placeholders",
    path = "Placeholders.png",
    px = 35,
    py = 47
}

-- add rarities inside their own files
-- so make the industry rarity inside the industry jokers file
local filesToLoad = {
	"Items/Consumables/machine",
	"Items/Jokers/common",
	-- add the other stuff i make in here later
	-- also make sure you list the files in the order you want to load them,
	-- so probably specific categories in order from most to least common and then the next category of items
}
-- loads all files in the filestoload array thing so that you can actually use them in game
-- could go the way ruby did and make this far more complicated to order it properly but i can just order the table so :shrug:
for _, file in pairs(filesToLoad) do
	local loadedFile = SMODS.load_file(file..".lua")
	local ranFile = loadedFile()
end