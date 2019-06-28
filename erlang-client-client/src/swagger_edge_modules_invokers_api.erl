-module(swagger_edge_modules_invokers_api).

-export([delete_resource_endpoint/3, delete_resource_endpoint/4,
         delete_resource_endpoint_item/4, delete_resource_endpoint_item/5,
         get_resource_endpoint/3, get_resource_endpoint/4,
         get_resource_endpoint_item/4, get_resource_endpoint_item/5,
         patch_resource_endpoint/4, patch_resource_endpoint/5,
         patch_resource_endpoint_item/5, patch_resource_endpoint_item/6,
         post_resource_endpoint/4, post_resource_endpoint/5,
         post_resource_endpoint_item/5, post_resource_endpoint_item/6,
         put_resource_endpoint/4, put_resource_endpoint/5,
         put_resource_endpoint_item/5, put_resource_endpoint_item/6]).

-define(BASE_URL, "/").

%% @doc Invoke Resource Delete Method
%% Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
-spec delete_resource_endpoint(ctx:ctx(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
delete_resource_endpoint(Ctx, Mname, Rname) ->
    delete_resource_endpoint(Ctx, Mname, Rname, #{}).

-spec delete_resource_endpoint(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
delete_resource_endpoint(Ctx, Mname, Rname, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/edgemodules/", Mname, "/", Rname, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Invoke Resource/_* Delete Method
%% Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
-spec delete_resource_endpoint_item(ctx:ctx(), binary(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
delete_resource_endpoint_item(Ctx, Mname, Rname, Wildcard) ->
    delete_resource_endpoint_item(Ctx, Mname, Rname, Wildcard, #{}).

-spec delete_resource_endpoint_item(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
delete_resource_endpoint_item(Ctx, Mname, Rname, Wildcard, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/edgemodules/", Mname, "/", Rname, "/", Wildcard, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Invoke Resource Get Method
%% Used to invoke the GET method of the resource from an existing EMS EdgeModule.
-spec get_resource_endpoint(ctx:ctx(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_resource_endpoint(Ctx, Mname, Rname) ->
    get_resource_endpoint(Ctx, Mname, Rname, #{}).

-spec get_resource_endpoint(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_resource_endpoint(Ctx, Mname, Rname, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/edgemodules/", Mname, "/", Rname, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Invoke Resource/_* Get Method
%% Used to invoke the GET method of the resource from an existing EMS EdgeModule.
-spec get_resource_endpoint_item(ctx:ctx(), binary(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_resource_endpoint_item(Ctx, Mname, Rname, Wildcard) ->
    get_resource_endpoint_item(Ctx, Mname, Rname, Wildcard, #{}).

-spec get_resource_endpoint_item(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_resource_endpoint_item(Ctx, Mname, Rname, Wildcard, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/edgemodules/", Mname, "/", Rname, "/", Wildcard, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Invoke Resource Patch Method
%% Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
-spec patch_resource_endpoint(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
patch_resource_endpoint(Ctx, Mname, Rname, Body) ->
    patch_resource_endpoint(Ctx, Mname, Rname, Body, #{}).

-spec patch_resource_endpoint(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
patch_resource_endpoint(Ctx, Mname, Rname, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/edgemodules/", Mname, "/", Rname, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Invoke Resource/_* Patch Method
%% Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
-spec patch_resource_endpoint_item(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
patch_resource_endpoint_item(Ctx, Mname, Rname, Wildcard, Body) ->
    patch_resource_endpoint_item(Ctx, Mname, Rname, Wildcard, Body, #{}).

-spec patch_resource_endpoint_item(ctx:ctx(), binary(), binary(), binary(), maps:map(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
patch_resource_endpoint_item(Ctx, Mname, Rname, Wildcard, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/edgemodules/", Mname, "/", Rname, "/", Wildcard, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Invoke Resource Post Method
%% Used to invoke the POST method of the resource from an existing EMS EdgeModule.
-spec post_resource_endpoint(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
post_resource_endpoint(Ctx, Mname, Rname, Body) ->
    post_resource_endpoint(Ctx, Mname, Rname, Body, #{}).

-spec post_resource_endpoint(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
post_resource_endpoint(Ctx, Mname, Rname, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/edgemodules/", Mname, "/", Rname, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Invoke Resource/_* Post Method
%% Used to invoke the POST method of the resource from an existing EMS EdgeModule.
-spec post_resource_endpoint_item(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
post_resource_endpoint_item(Ctx, Mname, Rname, Wildcard, Body) ->
    post_resource_endpoint_item(Ctx, Mname, Rname, Wildcard, Body, #{}).

-spec post_resource_endpoint_item(ctx:ctx(), binary(), binary(), binary(), maps:map(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
post_resource_endpoint_item(Ctx, Mname, Rname, Wildcard, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/edgemodules/", Mname, "/", Rname, "/", Wildcard, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Invoke Resource Put Method
%% Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
-spec put_resource_endpoint(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
put_resource_endpoint(Ctx, Mname, Rname, Body) ->
    put_resource_endpoint(Ctx, Mname, Rname, Body, #{}).

-spec put_resource_endpoint(ctx:ctx(), binary(), binary(), maps:map(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
put_resource_endpoint(Ctx, Mname, Rname, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/edgemodules/", Mname, "/", Rname, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Invoke Resource/_* Put Method
%% Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
-spec put_resource_endpoint_item(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
put_resource_endpoint_item(Ctx, Mname, Rname, Wildcard, Body) ->
    put_resource_endpoint_item(Ctx, Mname, Rname, Wildcard, Body, #{}).

-spec put_resource_endpoint_item(ctx:ctx(), binary(), binary(), binary(), maps:map(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
put_resource_endpoint_item(Ctx, Mname, Rname, Wildcard, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/edgemodules/", Mname, "/", Rname, "/", Wildcard, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


