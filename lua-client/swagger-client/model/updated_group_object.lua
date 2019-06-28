--[[
  EMS API Documentation
 
  Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 
  OpenAPI spec version: 0.0.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- updated_group_object class
local updated_group_object = {}
local updated_group_object_mt = {
	__name = "updated_group_object";
	__index = updated_group_object;
}

local function cast_updated_group_object(t)
	return setmetatable(t, updated_group_object_mt)
end

local function new_updated_group_object(updated)
	return cast_updated_group_object({
		["updated"] = updated;
	})
end

return {
	cast = cast_updated_group_object;
	new = new_updated_group_object;
}