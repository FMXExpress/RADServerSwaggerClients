-module(swagger_edge_modules_api).

-export([get_module/2, get_module/3,
         get_module_resource/3, get_module_resource/4,
         get_module_resources/2, get_module_resources/3,
         get_modules/1, get_modules/2,
         get_modules_fields/1, get_modules_fields/2,
         get_resources/1, get_resources/2,
         get_resources_fields/1, get_resources_fields/2,
         register_module/2, register_module/3,
         register_module_resource/3, register_module_resource/4,
         unregister_module/2, unregister_module/3,
         unregister_module_resource/3, unregister_module_resource/4,
         update_module/3, update_module/4,
         update_module_resource/4, update_module_resource/5]).

-define(BASE_URL, "/").

%% @doc Get Module
%%  |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
-spec get_module(ctx:ctx(), binary()) -> {ok, swagger_edge_module_object:swagger_edge_module_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_module(Ctx, Mname) ->
    get_module(Ctx, Mname, #{}).

-spec get_module(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_edge_module_object:swagger_edge_module_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_module(Ctx, Mname, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/edgemodules/", Mname, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get EdgeModule Resource
%%  |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.
-spec get_module_resource(ctx:ctx(), binary(), binary()) -> {ok, swagger_edge_module_resource_object:swagger_edge_module_resource_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_module_resource(Ctx, Mname, Name) ->
    get_module_resource(Ctx, Mname, Name, #{}).

-spec get_module_resource(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_edge_module_resource_object:swagger_edge_module_resource_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_module_resource(Ctx, Mname, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/edgemodules/", Mname, "/resources/", Name, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get EdgeModule Resources
%%  |      Used to retrieve all data from the resources of an EdgeModule.
-spec get_module_resources(ctx:ctx(), binary()) -> {ok, [swagger_edge_module_resource_object:swagger_edge_module_resource_object()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_module_resources(Ctx, Mname) ->
    get_module_resources(Ctx, Mname, #{}).

-spec get_module_resources(ctx:ctx(), binary(), maps:map()) -> {ok, [swagger_edge_module_resource_object:swagger_edge_module_resource_object()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_module_resources(Ctx, Mname, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/edgemodules/", Mname, "/resources"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Module
%%  |      Used to retrieve all data from `EdgeModule`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
-spec get_modules(ctx:ctx()) -> {ok, [swagger_edge_module_object:swagger_edge_module_object()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_modules(Ctx) ->
    get_modules(Ctx, #{}).

-spec get_modules(ctx:ctx(), maps:map()) -> {ok, [swagger_edge_module_object:swagger_edge_module_object()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_modules(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/edgemodules"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Fields
%%  |      Used to retrieve all the `field names` of the EMS EdgeModule (including the custom fields).
-spec get_modules_fields(ctx:ctx()) -> {ok, swagger_fields_edge_module_object:swagger_fields_edge_module_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_modules_fields(Ctx) ->
    get_modules_fields(Ctx, #{}).

-spec get_modules_fields(ctx:ctx(), maps:map()) -> {ok, swagger_fields_edge_module_object:swagger_fields_edge_module_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_modules_fields(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/edgemodules/fields"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get EdgeModules Resources
%%  |      Used to retrieve all data from the resources of all EdgeModules.
-spec get_resources(ctx:ctx()) -> {ok, [swagger_edge_module_resource_object:swagger_edge_module_resource_object()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_resources(Ctx) ->
    get_resources(Ctx, #{}).

-spec get_resources(ctx:ctx(), maps:map()) -> {ok, [swagger_edge_module_resource_object:swagger_edge_module_resource_object()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_resources(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/edgemodules/resources"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Resource Fields
%%  |      Used to retrieve the `field names` of all the resources of the EMS EdgeModule (including the custom fields).
-spec get_resources_fields(ctx:ctx()) -> {ok, swagger_fields_edge_module_object:swagger_fields_edge_module_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_resources_fields(Ctx) ->
    get_resources_fields(Ctx, #{}).

-spec get_resources_fields(ctx:ctx(), maps:map()) -> {ok, swagger_fields_edge_module_object:swagger_fields_edge_module_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_resources_fields(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/edgemodules/resources/fields"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add Module
%%  |      Used to add a new `EdgeModule` object to the EMS database.
-spec register_module(ctx:ctx(), swagger_edge_module_add_object:swagger_edge_module_add_object()) -> {ok, swagger_edge_module_added_object:swagger_edge_module_added_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
register_module(Ctx, Body) ->
    register_module(Ctx, Body, #{}).

-spec register_module(ctx:ctx(), swagger_edge_module_add_object:swagger_edge_module_add_object(), maps:map()) -> {ok, swagger_edge_module_added_object:swagger_edge_module_added_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
register_module(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/edgemodules"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add Module Resource
%%  |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.
-spec register_module_resource(ctx:ctx(), binary(), swagger_edge_module_resource_add_object:swagger_edge_module_resource_add_object()) -> {ok, swagger_edge_module_resource_added_object:swagger_edge_module_resource_added_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
register_module_resource(Ctx, Mname, Body) ->
    register_module_resource(Ctx, Mname, Body, #{}).

-spec register_module_resource(ctx:ctx(), binary(), swagger_edge_module_resource_add_object:swagger_edge_module_resource_add_object(), maps:map()) -> {ok, swagger_edge_module_resource_added_object:swagger_edge_module_resource_added_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
register_module_resource(Ctx, Mname, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/edgemodules/", Mname, "/resources"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete Module
%%  |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
-spec unregister_module(ctx:ctx(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
unregister_module(Ctx, Mname) ->
    unregister_module(Ctx, Mname, #{}).

-spec unregister_module(ctx:ctx(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
unregister_module(Ctx, Mname, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/edgemodules/", Mname, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete Module Resource
%%  |      Used to delete an `EdgeModule Resource`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
-spec unregister_module_resource(ctx:ctx(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
unregister_module_resource(Ctx, Mname, Name) ->
    unregister_module_resource(Ctx, Mname, Name, #{}).

-spec unregister_module_resource(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
unregister_module_resource(Ctx, Mname, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/edgemodules/", Mname, "/resources/", Name, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update Module
%%  |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
-spec update_module(ctx:ctx(), binary(), swagger_edge_module_update_object:swagger_edge_module_update_object()) -> {ok, swagger_edge_module_updated_object:swagger_edge_module_updated_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
update_module(Ctx, Mname, Body) ->
    update_module(Ctx, Mname, Body, #{}).

-spec update_module(ctx:ctx(), binary(), swagger_edge_module_update_object:swagger_edge_module_update_object(), maps:map()) -> {ok, swagger_edge_module_updated_object:swagger_edge_module_updated_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
update_module(Ctx, Mname, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/edgemodules/", Mname, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update Module Resource
%%  |      Used to update an `EdgeModule`. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
-spec update_module_resource(ctx:ctx(), binary(), binary(), swagger_edge_module_resource_update_object:swagger_edge_module_resource_update_object()) -> {ok, swagger_edge_module_resource_updated_object:swagger_edge_module_resource_updated_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
update_module_resource(Ctx, Mname, Name, Body) ->
    update_module_resource(Ctx, Mname, Name, Body, #{}).

-spec update_module_resource(ctx:ctx(), binary(), binary(), swagger_edge_module_resource_update_object:swagger_edge_module_resource_update_object(), maps:map()) -> {ok, swagger_edge_module_resource_updated_object:swagger_edge_module_resource_updated_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
update_module_resource(Ctx, Mname, Name, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/edgemodules/", Mname, "/resources/", Name, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


