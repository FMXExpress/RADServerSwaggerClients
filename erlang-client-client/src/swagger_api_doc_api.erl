-module(swagger_api_doc_api).

-export([a_pi/1, a_pi/2,
         get_apijson_format/1, get_apijson_format/2,
         get_apiyaml_format/1, get_apiyaml_format/2,
         get_apiyaml_format_end_point/2, get_apiyaml_format_end_point/3]).

-define(BASE_URL, "/").

%% @doc Get API EndPoints
%%  |      Used to retrieve all the API EndPoints.
-spec a_pi(ctx:ctx()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
a_pi(Ctx) ->
    a_pi(Ctx, #{}).

-spec a_pi(ctx:ctx(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
a_pi(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/api"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get JSON
%% Get API in JSON format
-spec get_apijson_format(ctx:ctx()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_apijson_format(Ctx) ->
    get_apijson_format(Ctx, #{}).

-spec get_apijson_format(ctx:ctx(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_apijson_format(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/api/apidoc.json"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get YAML
%% Get API in YAML format
-spec get_apiyaml_format(ctx:ctx()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_apiyaml_format(Ctx) ->
    get_apiyaml_format(Ctx, #{}).

-spec get_apiyaml_format(ctx:ctx(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_apiyaml_format(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/api/apidoc.yaml"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get API EndPoint
%%  |      Used to retrieve an EndPoint for the API EndPoints.
-spec get_apiyaml_format_end_point(ctx:ctx(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_apiyaml_format_end_point(Ctx, Item) ->
    get_apiyaml_format_end_point(Ctx, Item, #{}).

-spec get_apiyaml_format_end_point(ctx:ctx(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_apiyaml_format_end_point(Ctx, Item, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/api/", Item, "/apidoc.yaml"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


