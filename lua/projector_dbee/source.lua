---@class ProjectorDbeeSource: Source
---@field conns ConnectionParams[]
local ProjectorDbeeSource = {}

--- Loads connections from json file
---@return Source
function ProjectorDbeeSource:new()
  local o = {
    conns = {},
  }
  setmetatable(o, self)
  self.__index = self
  return o
end

---@param conns ConnectionParams[]
function ProjectorDbeeSource:set_conns(conns)
  self.conns = conns or {}
end

---@return string
function ProjectorDbeeSource:name()
  return "projector"
end

---@return ConnectionParams[]
function ProjectorDbeeSource:load()
  return self.conns
end

return ProjectorDbeeSource
