--[[
  EMS API Documentation
 
  Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 
  OpenAPI spec version: 0.0.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

--package swagger-client

local http_request = require "http.request"
local http_util = require "http.util"
local dkjson = require "dkjson"
local basexx = require "basexx"

-- model import
local swagger-client_field_object = require "swagger-client.model.field_object"
local swagger-client_group_name = require "swagger-client.model.group_name"
local swagger-client_update_object = require "swagger-client.model.update_object"
local swagger-client_updated_object = require "swagger-client.model.updated_object"
local swagger-client_user_object = require "swagger-client.model.user_object"
local swagger-client_user_sign_up_response_object = require "swagger-client.model.user_sign_up_response_object"
local swagger-client_user_token_object = require "swagger-client.model.user_token_object"
local swagger-client_user_credentials_object = require "swagger-client.model.user_credentials_object"
local swagger-client_userid_object = require "swagger-client.model.userid_object"

local users_api = {}
local users_api_mt = {
	__name = "users_api";
	__index = users_api;
}

local function new_users_api(host, basePath, schemes)
	local schemes_map = {}
	for _,v in ipairs(schemes) do
		schemes_map[v] = v
	end
	local default_scheme = schemes_map.https or schemes_map.http
	return setmetatable({
		host = host;
		basePath = basePath or "http://localhost:8080";
		schemes = schemes_map;
		default_scheme = default_scheme;
		http_username = nil;
		http_password = nil;
		api_key = {};
		access_token = nil;
	}, users_api_mt)
end

function users_api:add_user(body, x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/users",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "POST")
	-- TODO: create a function to select proper accept
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_content_type = { "application/json" }
	req.headers:upsert("accept", "application/json")

	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end
	req:set_body(dkjson.encode(body))


	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		return swagger-client_userid_object.cast(result), headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function users_api:delete_user(id, x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/users/%s",
			self.basePath, id);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "DELETE")
	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		return nil, headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function users_api:get_user(id, x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/users/%s",
			self.basePath, id);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		return swagger-client_user_object.cast(result), headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function users_api:get_user_fields(x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/users/fields",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		for _, ob in ipairs(result) do
			swagger-client_field_object.cast(ob)
		end
		return result, headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function users_api:get_user_groups(id, x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/users/%s/groups",
			self.basePath, id);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		for _, ob in ipairs(result) do
			swagger-client_group_name.cast(ob)
		end
		return result, headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function users_api:get_users(x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret, skip, limit, order, where)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/users?skip=%s&limit=%s&order=%s&where=%s",
			self.basePath, http_util.encodeURIComponent(skip), http_util.encodeURIComponent(limit), http_util.encodeURIComponent(order), http_util.encodeURIComponent(where));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		for _, ob in ipairs(result) do
			swagger-client_user_object.cast(ob)
		end
		return result, headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function users_api:login_user(body, x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/users/login",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "POST")
	-- TODO: create a function to select proper accept
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_content_type = { "application/json" }
	req.headers:upsert("accept", "application/json")

	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end
	req:set_body(dkjson.encode(body))


	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		return swagger-client_user_token_object.cast(result), headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function users_api:logout_user(x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/users/logout",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "POST")
	-- TODO: create a function to select proper accept
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_content_type = { "application/json" }
	req.headers:upsert("accept", "application/json")

	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		return nil, headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function users_api:signup_user(body, x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/users/signup",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "POST")
	-- TODO: create a function to select proper accept
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_content_type = { "application/json" }
	req.headers:upsert("accept", "application/json")

	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end
	req:set_body(dkjson.encode(body))


	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		return swagger-client_user_sign_up_response_object.cast(result), headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function users_api:update_user(id, body, x_embarcadero_application_id, x_embarcadero_app_secret, x_embarcadero_master_secret)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		path = string.format("%s/users/%s",
			self.basePath, id);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
	-- TODO: create a function to select proper accept
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_content_type = { "application/json" }
	req.headers:upsert("accept", "application/json")

	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	if x_embarcadero_application_id then
		req.headers:upsert("X-Embarcadero-Application-Id", x_embarcadero_application_id)
	end
	if x_embarcadero_app_secret then
		req.headers:upsert("X-Embarcadero-App-Secret", x_embarcadero_app_secret)
	end
	if x_embarcadero_master_secret then
		req.headers:upsert("X-Embarcadero-Master-Secret", x_embarcadero_master_secret)
	end
	req:set_body(dkjson.encode(body))


	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		return swagger-client_updated_object.cast(result), headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

return {
	new = new_users_api;
}

