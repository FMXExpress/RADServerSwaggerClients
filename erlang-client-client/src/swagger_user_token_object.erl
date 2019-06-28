-module(swagger_user_token_object).

-export([encode/1]).

-export_type([swagger_user_token_object/0]).

-type swagger_user_token_object() ::
    #{ 'id' := binary(),
       'username' := binary(),
       '_meta' := swagger__meta_object:swagger__meta_object(),
       'sessiontoken' := binary()
     }.

encode(#{ 'id' := Id,
          'username' := Username,
          '_meta' := Meta,
          'sessiontoken' := Sessiontoken
        }) ->
    #{ 'id' => Id,
       'username' => Username,
       '_meta' => Meta,
       'sessiontoken' => Sessiontoken
     }.
