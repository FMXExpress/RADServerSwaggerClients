library swagger.api;

import 'package:http/http.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:swagger/auth/api_key_auth.dart';
import 'package:swagger/auth/basic_auth.dart';
import 'package:swagger/auth/oauth.dart';

import 'package:swagger/api/api_doc_api.dart';
import 'package:swagger/api/edge_modules_api.dart';
import 'package:swagger/api/edge_modules_invokers_api.dart';
import 'package:swagger/api/groups_api.dart';
import 'package:swagger/api/installations_api.dart';
import 'package:swagger/api/push_api.dart';
import 'package:swagger/api/users_api.dart';
import 'package:swagger/api/version_api.dart';

import 'package:swagger/model/channel_name.dart';
import 'package:swagger/model/edge_module_add_object.dart';
import 'package:swagger/model/edge_module_added_object.dart';
import 'package:swagger/model/edge_module_object.dart';
import 'package:swagger/model/edge_module_resource_add_object.dart';
import 'package:swagger/model/edge_module_resource_added_object.dart';
import 'package:swagger/model/edge_module_resource_object.dart';
import 'package:swagger/model/edge_module_resource_update_object.dart';
import 'package:swagger/model/edge_module_resource_updated_object.dart';
import 'package:swagger/model/edge_module_update_object.dart';
import 'package:swagger/model/edge_module_updated_object.dart';
import 'package:swagger/model/field_group_object.dart';
import 'package:swagger/model/field_installation_object.dart';
import 'package:swagger/model/field_object.dart';
import 'package:swagger/model/field_object_fields.dart';
import 'package:swagger/model/fields_edge_module_object.dart';
import 'package:swagger/model/group_add_object.dart';
import 'package:swagger/model/group_name.dart';
import 'package:swagger/model/group_object.dart';
import 'package:swagger/model/installation_add_object.dart';
import 'package:swagger/model/installation_added_object.dart';
import 'package:swagger/model/installation_object.dart';
import 'package:swagger/model/meta_edge_module_object.dart';
import 'package:swagger/model/meta_group_object.dart';
import 'package:swagger/model/meta_installation_object.dart';
import 'package:swagger/model/meta_object.dart';
import 'package:swagger/model/push_data_object.dart';
import 'package:swagger/model/push_data_object_aps.dart';
import 'package:swagger/model/push_data_object_extras.dart';
import 'package:swagger/model/push_data_object_gcm.dart';
import 'package:swagger/model/push_object.dart';
import 'package:swagger/model/push_where_object.dart';
import 'package:swagger/model/push_where_object_device_token.dart';
import 'package:swagger/model/update_group_object.dart';
import 'package:swagger/model/update_installation_object.dart';
import 'package:swagger/model/update_object.dart';
import 'package:swagger/model/updated_group_object.dart';
import 'package:swagger/model/updated_installation_object.dart';
import 'package:swagger/model/updated_object.dart';
import 'package:swagger/model/user_credentials_object.dart';
import 'package:swagger/model/user_object.dart';
import 'package:swagger/model/user_sign_up_response_object.dart';
import 'package:swagger/model/user_token_object.dart';
import 'package:swagger/model/userid_object.dart';
import 'package:swagger/model/version_object.dart';


final jsonJaguarRepo = JsonRepo()
..add(ChannelNameSerializer())
..add(EdgeModuleAddObjectSerializer())
..add(EdgeModuleAddedObjectSerializer())
..add(EdgeModuleObjectSerializer())
..add(EdgeModuleResourceAddObjectSerializer())
..add(EdgeModuleResourceAddedObjectSerializer())
..add(EdgeModuleResourceObjectSerializer())
..add(EdgeModuleResourceUpdateObjectSerializer())
..add(EdgeModuleResourceUpdatedObjectSerializer())
..add(EdgeModuleUpdateObjectSerializer())
..add(EdgeModuleUpdatedObjectSerializer())
..add(FieldGroupObjectSerializer())
..add(FieldInstallationObjectSerializer())
..add(FieldObjectSerializer())
..add(FieldObjectFieldsSerializer())
..add(FieldsEdgeModuleObjectSerializer())
..add(GroupAddObjectSerializer())
..add(GroupNameSerializer())
..add(GroupObjectSerializer())
..add(InstallationAddObjectSerializer())
..add(InstallationAddedObjectSerializer())
..add(InstallationObjectSerializer())
..add(MetaEdgeModuleObjectSerializer())
..add(MetaGroupObjectSerializer())
..add(MetaInstallationObjectSerializer())
..add(MetaObjectSerializer())
..add(PushDataObjectSerializer())
..add(PushDataObjectApsSerializer())
..add(PushDataObjectExtrasSerializer())
..add(PushDataObjectGcmSerializer())
..add(PushObjectSerializer())
..add(PushWhereObjectSerializer())
..add(PushWhereObjectDeviceTokenSerializer())
..add(UpdateGroupObjectSerializer())
..add(UpdateInstallationObjectSerializer())
..add(UpdateObjectSerializer())
..add(UpdatedGroupObjectSerializer())
..add(UpdatedInstallationObjectSerializer())
..add(UpdatedObjectSerializer())
..add(UserCredentialsObjectSerializer())
..add(UserObjectSerializer())
..add(UserSignUpResponseObjectSerializer())
..add(UserTokenObjectSerializer())
..add(UseridObjectSerializer())
..add(VersionObjectSerializer())
;

final _defaultInterceptors = [OAuthInterceptor(), BasicAuthInterceptor(), ApiKeyAuthInterceptor()];

class JaguarApiGen {
    List<Interceptor> interceptors;
    String basePath = "http://localhost:8080";
    Route _baseRoute;

    /**
     * Add custom global interceptors, put overrideInterceptors to true to set your interceptors only (auth interceptors will not be added)
     */
    JaguarApiGen({List<Interceptor> interceptors, bool overrideInterceptors = false, String baseUrl}) {
        _baseRoute = Route(baseUrl ?? basePath).withClient(globalClient ?? IOClient());
        if(interceptors == null) {
            this.interceptors = _defaultInterceptors;
        }
        else if(overrideInterceptors){
            this.interceptors = interceptors;
        }
        else {
            this.interceptors = List.from(_defaultInterceptors)..addAll(interceptors);
        }

        this.interceptors.forEach((interceptor) {
            _baseRoute.before(interceptor.before);
            _baseRoute.after(interceptor.after);
        });
    }

    void setOAuthToken(String name, String token) {
        (_defaultInterceptors[0] as OAuthInterceptor).tokens[name] = token;
    }

    void setBasicAuth(String name, String username, String password) {
        (_defaultInterceptors[1] as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }

    void setApiKey(String name, String apiKey) {
        (_defaultInterceptors[2] as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }

    
    /**
     * Get ApiDocApi instance, base route and serializer can be overridden by a given but be careful,
     * by doing that all interceptors will not be executed
     */
    ApiDocApi getApiDocApi({Route base, SerializerRepo serializers}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(serializers == null) {
            serializers = jsonJaguarRepo;
        }
        return ApiDocApi(base: base, serializers: serializers);
    }

    
    /**
     * Get EdgeModulesApi instance, base route and serializer can be overridden by a given but be careful,
     * by doing that all interceptors will not be executed
     */
    EdgeModulesApi getEdgeModulesApi({Route base, SerializerRepo serializers}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(serializers == null) {
            serializers = jsonJaguarRepo;
        }
        return EdgeModulesApi(base: base, serializers: serializers);
    }

    
    /**
     * Get EdgeModulesInvokersApi instance, base route and serializer can be overridden by a given but be careful,
     * by doing that all interceptors will not be executed
     */
    EdgeModulesInvokersApi getEdgeModulesInvokersApi({Route base, SerializerRepo serializers}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(serializers == null) {
            serializers = jsonJaguarRepo;
        }
        return EdgeModulesInvokersApi(base: base, serializers: serializers);
    }

    
    /**
     * Get GroupsApi instance, base route and serializer can be overridden by a given but be careful,
     * by doing that all interceptors will not be executed
     */
    GroupsApi getGroupsApi({Route base, SerializerRepo serializers}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(serializers == null) {
            serializers = jsonJaguarRepo;
        }
        return GroupsApi(base: base, serializers: serializers);
    }

    
    /**
     * Get InstallationsApi instance, base route and serializer can be overridden by a given but be careful,
     * by doing that all interceptors will not be executed
     */
    InstallationsApi getInstallationsApi({Route base, SerializerRepo serializers}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(serializers == null) {
            serializers = jsonJaguarRepo;
        }
        return InstallationsApi(base: base, serializers: serializers);
    }

    
    /**
     * Get PushApi instance, base route and serializer can be overridden by a given but be careful,
     * by doing that all interceptors will not be executed
     */
    PushApi getPushApi({Route base, SerializerRepo serializers}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(serializers == null) {
            serializers = jsonJaguarRepo;
        }
        return PushApi(base: base, serializers: serializers);
    }

    
    /**
     * Get UsersApi instance, base route and serializer can be overridden by a given but be careful,
     * by doing that all interceptors will not be executed
     */
    UsersApi getUsersApi({Route base, SerializerRepo serializers}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(serializers == null) {
            serializers = jsonJaguarRepo;
        }
        return UsersApi(base: base, serializers: serializers);
    }

    
    /**
     * Get VersionApi instance, base route and serializer can be overridden by a given but be careful,
     * by doing that all interceptors will not be executed
     */
    VersionApi getVersionApi({Route base, SerializerRepo serializers}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(serializers == null) {
            serializers = jsonJaguarRepo;
        }
        return VersionApi(base: base, serializers: serializers);
    }

    
}