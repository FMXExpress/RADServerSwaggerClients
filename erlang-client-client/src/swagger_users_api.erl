-module(swagger_users_api).

-export([add_user/2, add_user/3,
         delete_user/2, delete_user/3,
         get_user/2, get_user/3,
         get_user_fields/1, get_user_fields/2,
         get_user_groups/2, get_user_groups/3,
         get_users/1, get_users/2,
         login_user/2, login_user/3,
         logout_user/1, logout_user/2,
         signup_user/2, signup_user/3,
         update_user/3, update_user/4]).

-define(BASE_URL, "/").

%% @doc Add User
%%  |      Used to add a new `User` object to the EMS database.
-spec add_user(ctx:ctx(), swagger_user_credentials_object:swagger_user_credentials_object()) -> {ok, swagger_userid_object:swagger_userid_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
add_user(Ctx, Body) ->
    add_user(Ctx, Body, #{}).

-spec add_user(ctx:ctx(), swagger_user_credentials_object:swagger_user_credentials_object(), maps:map()) -> {ok, swagger_userid_object:swagger_userid_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
add_user(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/users"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete User
%%  |      Used to delete a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.
-spec delete_user(ctx:ctx(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
delete_user(Ctx, Id) ->
    delete_user(Ctx, Id, #{}).

-spec delete_user(ctx:ctx(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
delete_user(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/users/", Id, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get User
%%  |      Used to retrieve all data from a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.
-spec get_user(ctx:ctx(), binary()) -> {ok, swagger_user_object:swagger_user_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_user(Ctx, Id) ->
    get_user(Ctx, Id, #{}).

-spec get_user(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_user_object:swagger_user_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_user(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/users/", Id, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Fields
%%  |      Used to retrieve all the `field names` of the EMS Users (including the custom fields).
-spec get_user_fields(ctx:ctx()) -> {ok, [swagger_field_object:swagger_field_object()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_user_fields(Ctx) ->
    get_user_fields(Ctx, #{}).

-spec get_user_fields(ctx:ctx(), maps:map()) -> {ok, [swagger_field_object:swagger_field_object()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_user_fields(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/users/fields"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get User Groups
%%  |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.
-spec get_user_groups(ctx:ctx(), binary()) -> {ok, [swagger_group_name:swagger_group_name()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_user_groups(Ctx, Id) ->
    get_user_groups(Ctx, Id, #{}).

-spec get_user_groups(ctx:ctx(), binary(), maps:map()) -> {ok, [swagger_group_name:swagger_group_name()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_user_groups(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/users/", Id, "/groups"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Users
%%  |      Used to retrieve all data from `Users`.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
-spec get_users(ctx:ctx()) -> {ok, [swagger_user_object:swagger_user_object()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_users(Ctx) ->
    get_users(Ctx, #{}).

-spec get_users(ctx:ctx(), maps:map()) -> {ok, [swagger_user_object:swagger_user_object()], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
get_users(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/users"],
    QS = lists:flatten([])++swagger_utils:optional_params(['skip', 'limit', 'order', 'where'], _OptionalParams),
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Log In
%%  |      Logs in to the EMS Server with a specific EMS User.
-spec login_user(ctx:ctx(), swagger_user_credentials_object:swagger_user_credentials_object()) -> {ok, swagger_user_token_object:swagger_user_token_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
login_user(Ctx, Body) ->
    login_user(Ctx, Body, #{}).

-spec login_user(ctx:ctx(), swagger_user_credentials_object:swagger_user_credentials_object(), maps:map()) -> {ok, swagger_user_token_object:swagger_user_token_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
login_user(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/users/login"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc sPostLogoutSummaryTitle
%% sPostLogoutSummaryDesc
-spec logout_user(ctx:ctx()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
logout_user(Ctx) ->
    logout_user(Ctx, #{}).

-spec logout_user(ctx:ctx(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
logout_user(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/users/logout"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Sign Up  User
%%  |      Signs up to the EMS Server with an appropriate EMS User.
-spec signup_user(ctx:ctx(), swagger_user_credentials_object:swagger_user_credentials_object()) -> {ok, swagger_user_sign_up_response_object:swagger_user_sign_up_response_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
signup_user(Ctx, Body) ->
    signup_user(Ctx, Body, #{}).

-spec signup_user(ctx:ctx(), swagger_user_credentials_object:swagger_user_credentials_object(), maps:map()) -> {ok, swagger_user_sign_up_response_object:swagger_user_sign_up_response_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
signup_user(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/users/signup"],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update User
%%  |      Used to update a `User`. **id** is the unique EMS User identifier (UID) in the EMS database.
-spec update_user(ctx:ctx(), binary(), swagger_update_object:swagger_update_object()) -> {ok, swagger_updated_object:swagger_updated_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
update_user(Ctx, Id, Body) ->
    update_user(Ctx, Id, Body, #{}).

-spec update_user(ctx:ctx(), binary(), swagger_update_object:swagger_update_object(), maps:map()) -> {ok, swagger_updated_object:swagger_updated_object(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
update_user(Ctx, Id, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/users/", Id, ""],
    QS = [],
    Headers = []++swagger_utils:optional_params(['X-Embarcadero-Application-Id', 'X-Embarcadero-App-Secret', 'X-Embarcadero-Master-Secret'], _OptionalParams),
    Body1 = Body,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


