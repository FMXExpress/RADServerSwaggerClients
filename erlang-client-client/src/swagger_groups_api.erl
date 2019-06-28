-module(swagger_groups_api).

-export([add_group/2, add_group/3,
         delete_group/2, delete_group/3,
         get_group/2, get_group/3,
         get_group_fields/1, get_group_fields/2,
         get_groups/1, get_groups/2,
         update_group/3, update_group/4]).

-define(BASE_URL, "/").

%% @doc Add Group
%%  |      Used to add a new `Group` object to the EMS database.
-spec add_group(ctx:ctx(), swagger_group_add_object:swagger_group_add_object()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
add_group(Ctx, Body) ->
    add_group(Ctx, Body, #{}).

-spec add_group(ctx:ctx(), swagger_group_add_object:swagger_group_add_object(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
add_group(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/groups"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete Group
%%  |      Used to delete a `Group`. **item** is the unique EMS Group name in the EMS database.
-spec delete_group(ctx:ctx(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
delete_group(Ctx, Item) ->
    delete_group(Ctx, Item, #{}).

-spec delete_group(ctx:ctx(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
delete_group(Ctx, Item, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/groups/", Item, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Group
%%  |      Used to retrieve all data from a `Group`. **item** is the unique EMS Group name in the EMS database.
-spec get_group(ctx:ctx(), binary()) -> {ok, swagger_group_object:swagger_group_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_group(Ctx, Item) ->
    get_group(Ctx, Item, #{}).

-spec get_group(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_group_object:swagger_group_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_group(Ctx, Item, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/groups/", Item, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Fields
%%  |      Used to retrieve all the `field names` of the EMS Group (including the custom fields).
-spec get_group_fields(ctx:ctx()) -> {ok, [swagger_field_group_object:swagger_field_group_object()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_group_fields(Ctx) ->
    get_group_fields(Ctx, #{}).

-spec get_group_fields(ctx:ctx(), maps:map()) -> {ok, [swagger_field_group_object:swagger_field_group_object()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_group_fields(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/groups/fields"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Groups
%%  |      Used to retrieve all data from `Groups`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
-spec get_groups(ctx:ctx()) -> {ok, [swagger_group_object:swagger_group_object()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_groups(Ctx) ->
    get_groups(Ctx, #{}).

-spec get_groups(ctx:ctx(), maps:map()) -> {ok, [swagger_group_object:swagger_group_object()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_groups(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/groups"],
    QS = lists:flatten([])++swagger_utils:optional_params(['skip', 'limit', 'order', 'where'], _OptionalParams),
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update Group
%%  |      Used to update a `Group`. **item** is the unique EMS Group name in the EMS database.
-spec update_group(ctx:ctx(), binary(), swagger_update_group_object:swagger_update_group_object()) -> {ok, swagger_updated_group_object:swagger_updated_group_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
update_group(Ctx, Item, Body) ->
    update_group(Ctx, Item, Body, #{}).

-spec update_group(ctx:ctx(), binary(), swagger_update_group_object:swagger_update_group_object(), maps:map()) -> {ok, swagger_updated_group_object:swagger_updated_group_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
update_group(Ctx, Item, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/groups/", Item, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


