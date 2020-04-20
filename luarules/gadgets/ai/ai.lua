ShardAI = class(AIBase, (function(c, subf)
	c.subf = subf
	end)
	)

local function checkAImode(modeName)
	local path = "luarules/gadgets/ai/byar/"..modeName.."/"
	if VFS.FileExists(path.."modules.lua") and VFS.FileExists(path.."behaviourfactory.lua") then
		return true
	end
	return false
end
function ShardAI:Init()
	self.api = shard_include("preload/api")
	self.game = self.api.game
	self.map = self.api.map
	self.game.ai = self
	self.map.ai = self
	self.game.map = self.map
	self.game:SendToConsole("Shard by AF - playing: "..self.game:GameName().." on: "..self.map:MapName())

	local DAIlist = {}
	local DAIModes = VFS.SubDirs("luarules/gadgets/ai/byar/")
	for i,lmodeName in pairs(DAIModes) do
		local smodeName = string.sub(lmodeName, string.len("luarules/gadgets/ai/byar/") + 1, string.len(lmodeName) - 1)
		if checkAImode(smodeName) == true then
			DAIlist[smodeName] = true
		end
	end

	local mode = string.sub(self.fullname, 5)
	if DAIlist[mode] ~= true then
		Spring.Echo("ERROR : Unknown DAI mode: "..mode..". Please stop the game and restart with another DAI mode")
		return nil
	end

	self.subf = mode
	shard_include("behaviourfactory", self.subf)
	shard_include("unit", self.subf)
	shard_include("modules", self.subf)
	self.modules = {}

	if next(modules) ~= nil then
		for i,m in ipairs(modules) do
			newmodule = m()
			self.game:SendToConsole("adding "..newmodule:Name().." module")
			local internalname = newmodule:internalName()
			self[internalname] = newmodule
			table.insert(self.modules,newmodule)
			newmodule:SetAI(self)
			newmodule:Init()
		end
	else
		self.game:SendToConsole("No modules found :s")
	end
end

function ShardAI:Prepare()
-- 	if not self.modules then self:Init() end
	ai = self
	game = self.game
	map = self.map
end

function ShardAI:Update()
	if self.gameend == true then
		return
	end
	for i,m in ipairs(self.modules) do
		if m == nil then
			self.game:SendToConsole("nil module!")
		else
			m:Update()
		end
	end
end

function ShardAI:GameMessage(text)
	if self.gameend == true then
		return
	end
	for i,m in ipairs(self.modules) do
		if m == nil then
			self.game:SendToConsole("nil module!")
		else
			m:GameMessage(text)
		end
	end
end

function ShardAI:UnitCreated(engineunit)
	if self.gameend == true then
		return
	end
	if engineunit == nil then
		self.game:SendToConsole("shard found nil engineunit")
		return
	end
	for i,m in ipairs(self.modules) do
		m:UnitCreated(engineunit)
	end
end

function ShardAI:UnitBuilt(engineunit)
	if self.gameend == true then
		return
	end
	if engineunit == nil then
		self.game:SendToConsole("shard-warning: unitbuilt engineunit nil ")
		return
	end
	for i,m in ipairs(self.modules) do
		m:UnitBuilt(engineunit)
	end
end

function ShardAI:UnitDead(engineunit)
	if self.gameend == true then
		return
	end
	if engineunit == nil then
		return
	end
	for i,m in ipairs(self.modules) do
		m:UnitDead(engineunit)
	end
end

function ShardAI:UnitIdle(engineunit)
	if self.gameend == true then
		return
	end
	if engineunit == nil then
		self.game:SendToConsole("shard-warning: idle engineunit nil")
		return
	end
	
	for i,m in ipairs(self.modules) do
		m:UnitIdle(engineunit)
	end
end

function ShardAI:UnitDamaged(engineunit,engineattacker,enginedamage)
	if self.gameend == true then
		return
	end
	if engineunit == nil then
		return
	end
	-- self.game:SendToConsole("UnitDamage for " .. enginedamage:Damage())
	for i,m in ipairs(self.modules) do
		m:UnitDamaged(engineunit,engineattacker,enginedamage)
	end
end

function ShardAI:UnitMoveFailed(engineunit)
	if self.gameend == true then
		return
	end
	if engineunit == nil then
		return
	end
	for i,m in ipairs(self.modules) do
		m:UnitMoveFailed(engineunit)
	end
end

function ShardAI:GameEnd()
	self.gameend = true
	for i,m in ipairs(self.modules) do
		m:GameEnd()
	end
end

function ShardAI:AddModule( newmodule )
	local internalname = newmodule:internalName()
	self[internalname] = newmodule
	table.insert(self.modules,newmodule)
	newmodule:Init()
end
