-module(swagger_installations_api).

-export([add_installation/2, add_installation/3,
         delete_installation/2, delete_installation/3,
         get_channels/1, get_channels/2,
         get_installation/2, get_installation/3,
         get_installation_fields/1, get_installation_fields/2,
         get_installations/1, get_installations/2,
         update_installation/3, update_installation/4]).

-define(BASE_URL, "/").

%% @doc Add Installation
%%  |      Used to add a new `Installation` object to the EMS database.
-spec add_installation(ctx:ctx(), swagger_installation_add_object:swagger_installation_add_object()) -> {ok, swagger_installation_added_object:swagger_installation_added_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
add_installation(Ctx, Body) ->
    add_installation(Ctx, Body, #{}).

-spec add_installation(ctx:ctx(), swagger_installation_add_object:swagger_installation_add_object(), maps:map()) -> {ok, swagger_installation_added_object:swagger_installation_added_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
add_installation(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/installations"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete Installation
%%  |      Used to delete an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.
-spec delete_installation(ctx:ctx(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
delete_installation(Ctx, Id) ->
    delete_installation(Ctx, Id, #{}).

-spec delete_installation(ctx:ctx(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
delete_installation(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/installations/", Id, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Installation Channels
%%  |       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
-spec get_channels(ctx:ctx()) -> {ok, [swagger_channel_name:swagger_channel_name()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_channels(Ctx) ->
    get_channels(Ctx, #{}).

-spec get_channels(ctx:ctx(), maps:map()) -> {ok, [swagger_channel_name:swagger_channel_name()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_channels(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/installations/channels"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Installation
%%  |      Used to retrieve all data from a specific `Installation` (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
-spec get_installation(ctx:ctx(), binary()) -> {ok, swagger_installation_object:swagger_installation_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_installation(Ctx, Id) ->
    get_installation(Ctx, Id, #{}).

-spec get_installation(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_installation_object:swagger_installation_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_installation(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/installations/", Id, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Fields
%%  |      Used to retrieve all the `field names` of the EMS Installation (including the custom fields).
-spec get_installation_fields(ctx:ctx()) -> {ok, [swagger_field_installation_object:swagger_field_installation_object()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_installation_fields(Ctx) ->
    get_installation_fields(Ctx, #{}).

-spec get_installation_fields(ctx:ctx(), maps:map()) -> {ok, [swagger_field_installation_object:swagger_field_installation_object()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_installation_fields(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/installations/fields"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Installations
%%  |      Used to retrieve all data from `Installation`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
-spec get_installations(ctx:ctx()) -> {ok, [swagger_installation_object:swagger_installation_object()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_installations(Ctx) ->
    get_installations(Ctx, #{}).

-spec get_installations(ctx:ctx(), maps:map()) -> {ok, [swagger_installation_object:swagger_installation_object()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_installations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/installations"],
    QS = lists:flatten([])++swagger_utils:optional_params(['skip', 'limit', 'order', 'where'], _OptionalParams),
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update Installation
%%  |      Used to update an `Installation`. **id** is the unique EMS Installation identifier (IID) in the EMS database.
-spec update_installation(ctx:ctx(), binary(), swagger_update_installation_object:swagger_update_installation_object()) -> {ok, swagger_updated_installation_object:swagger_updated_installation_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
update_installation(Ctx, Id, Body) ->
    update_installation(Ctx, Id, Body, #{}).

-spec update_installation(ctx:ctx(), binary(), swagger_update_installation_object:swagger_update_installation_object(), maps:map()) -> {ok, swagger_updated_installation_object:swagger_updated_installation_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
update_installation(Ctx, Id, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/installations/", Id, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


