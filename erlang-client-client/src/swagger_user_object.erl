-module(swagger_user_object).

-export([encode/1]).

-export_type([swagger_user_object/0]).

-type swagger_user_object() ::
    #{ 'id' := binary(),
       'username' := binary(),
       '_meta' := swagger__meta_object:swagger__meta_object()
     }.

encode(#{ 'id' := Id,
          'username' := Username,
          '_meta' := Meta
        }) ->
    #{ 'id' => Id,
       'username' => Username,
       '_meta' => Meta
     }.
