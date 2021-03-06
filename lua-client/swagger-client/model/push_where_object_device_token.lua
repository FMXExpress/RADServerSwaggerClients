--[[
  EMS API Documentation
 
  Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 
  OpenAPI spec version: 0.0.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- push_where_object_device_token class
local push_where_object_device_token = {}
local push_where_object_device_token_mt = {
	__name = "push_where_object_device_token";
	__index = push_where_object_device_token;
}

local function cast_push_where_object_device_token(t)
	return setmetatable(t, push_where_object_device_token_mt)
end

local function new_push_where_object_device_token(In_)
	return cast_push_where_object_device_token({
		["$in"] = In_;
	})
end

return {
	cast = cast_push_where_object_device_token;
	new = new_push_where_object_device_token;
}
