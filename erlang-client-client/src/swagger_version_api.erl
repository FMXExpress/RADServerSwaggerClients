-module(swagger_version_api).

-export([get_version/1, get_version/2]).

-define(BASE_URL, "/").

%% @doc Get version
%%  |      Used to retrieve the `Version` of the EMS Server.
-spec get_version(ctx:ctx()) -> {ok, swagger_version_object:swagger_version_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_version(Ctx) ->
    get_version(Ctx, #{}).

-spec get_version(ctx:ctx(), maps:map()) -> {ok, swagger_version_object:swagger_version_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_version(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/version"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


