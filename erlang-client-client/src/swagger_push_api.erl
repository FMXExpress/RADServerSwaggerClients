-module(swagger_push_api).

-export([send/2, send/3]).

-define(BASE_URL, "/").

%% @doc Send Push
%% Used to send a push notification message to a registered device
-spec send(ctx:ctx(), swagger_push_object:swagger_push_object()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
send(Ctx, Body) ->
    send(Ctx, Body, #{}).

-spec send(ctx:ctx(), swagger_push_object:swagger_push_object(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
send(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/push"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


