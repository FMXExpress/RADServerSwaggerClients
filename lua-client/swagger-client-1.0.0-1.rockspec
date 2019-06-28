package = "swagger-client"
version = "1.0.0-1"
source = {
	url = "https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO.git"
}

description = {
	summary = "API client genreated by Swagger Codegen",
	detailed = [[
Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps]],
	homepage = "https://github.com/swagger-api/swagger-codegen",
	license = "Unlicense",
	maintainer = "Swagger Codegen contributors",
}

dependencies = {
	"lua >= 5.2",
	"http",
	"dkjson",
	"basexx"
}

build = {
	type = "builtin",
	modules = {
		["swagger-client.api.api_doc_api"] = "swagger-client/api/api_doc_api.lua";
		["swagger-client.api.edge_modules_api"] = "swagger-client/api/edge_modules_api.lua";
		["swagger-client.api.edge_modules_invokers_api"] = "swagger-client/api/edge_modules_invokers_api.lua";
		["swagger-client.api.groups_api"] = "swagger-client/api/groups_api.lua";
		["swagger-client.api.installations_api"] = "swagger-client/api/installations_api.lua";
		["swagger-client.api.push_api"] = "swagger-client/api/push_api.lua";
		["swagger-client.api.users_api"] = "swagger-client/api/users_api.lua";
		["swagger-client.api.version_api"] = "swagger-client/api/version_api.lua";
		["swagger-client.model._meta_edge_module_object"] = "swagger-client/model/_meta_edge_module_object.lua";
		["swagger-client.model._meta_group_object"] = "swagger-client/model/_meta_group_object.lua";
		["swagger-client.model._meta_installation_object"] = "swagger-client/model/_meta_installation_object.lua";
		["swagger-client.model._meta_object"] = "swagger-client/model/_meta_object.lua";
		["swagger-client.model.channel_name"] = "swagger-client/model/channel_name.lua";
		["swagger-client.model.edge_module_add_object"] = "swagger-client/model/edge_module_add_object.lua";
		["swagger-client.model.edge_module_added_object"] = "swagger-client/model/edge_module_added_object.lua";
		["swagger-client.model.edge_module_object"] = "swagger-client/model/edge_module_object.lua";
		["swagger-client.model.edge_module_resource_add_object"] = "swagger-client/model/edge_module_resource_add_object.lua";
		["swagger-client.model.edge_module_resource_added_object"] = "swagger-client/model/edge_module_resource_added_object.lua";
		["swagger-client.model.edge_module_resource_object"] = "swagger-client/model/edge_module_resource_object.lua";
		["swagger-client.model.edge_module_resource_update_object"] = "swagger-client/model/edge_module_resource_update_object.lua";
		["swagger-client.model.edge_module_resource_updated_object"] = "swagger-client/model/edge_module_resource_updated_object.lua";
		["swagger-client.model.edge_module_update_object"] = "swagger-client/model/edge_module_update_object.lua";
		["swagger-client.model.edge_module_updated_object"] = "swagger-client/model/edge_module_updated_object.lua";
		["swagger-client.model.field_group_object"] = "swagger-client/model/field_group_object.lua";
		["swagger-client.model.field_installation_object"] = "swagger-client/model/field_installation_object.lua";
		["swagger-client.model.field_object"] = "swagger-client/model/field_object.lua";
		["swagger-client.model.field_object_fields"] = "swagger-client/model/field_object_fields.lua";
		["swagger-client.model.fields_edge_module_object"] = "swagger-client/model/fields_edge_module_object.lua";
		["swagger-client.model.group_add_object"] = "swagger-client/model/group_add_object.lua";
		["swagger-client.model.group_name"] = "swagger-client/model/group_name.lua";
		["swagger-client.model.group_object"] = "swagger-client/model/group_object.lua";
		["swagger-client.model.installation_add_object"] = "swagger-client/model/installation_add_object.lua";
		["swagger-client.model.installation_added_object"] = "swagger-client/model/installation_added_object.lua";
		["swagger-client.model.installation_object"] = "swagger-client/model/installation_object.lua";
		["swagger-client.model.push_data_object"] = "swagger-client/model/push_data_object.lua";
		["swagger-client.model.push_data_object_aps"] = "swagger-client/model/push_data_object_aps.lua";
		["swagger-client.model.push_data_object_extras"] = "swagger-client/model/push_data_object_extras.lua";
		["swagger-client.model.push_data_object_gcm"] = "swagger-client/model/push_data_object_gcm.lua";
		["swagger-client.model.push_object"] = "swagger-client/model/push_object.lua";
		["swagger-client.model.push_where_object"] = "swagger-client/model/push_where_object.lua";
		["swagger-client.model.push_where_object_device_token"] = "swagger-client/model/push_where_object_device_token.lua";
		["swagger-client.model.update_group_object"] = "swagger-client/model/update_group_object.lua";
		["swagger-client.model.update_installation_object"] = "swagger-client/model/update_installation_object.lua";
		["swagger-client.model.update_object"] = "swagger-client/model/update_object.lua";
		["swagger-client.model.updated_group_object"] = "swagger-client/model/updated_group_object.lua";
		["swagger-client.model.updated_installation_object"] = "swagger-client/model/updated_installation_object.lua";
		["swagger-client.model.updated_object"] = "swagger-client/model/updated_object.lua";
		["swagger-client.model.user_credentials_object"] = "swagger-client/model/user_credentials_object.lua";
		["swagger-client.model.user_object"] = "swagger-client/model/user_object.lua";
		["swagger-client.model.user_sign_up_response_object"] = "swagger-client/model/user_sign_up_response_object.lua";
		["swagger-client.model.user_token_object"] = "swagger-client/model/user_token_object.lua";
		["swagger-client.model.userid_object"] = "swagger-client/model/userid_object.lua";
		["swagger-client.model.version_object"] = "swagger-client/model/version_object.lua";
	}
}
