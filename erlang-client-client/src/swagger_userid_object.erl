-module(swagger_userid_object).

-export([encode/1]).

-export_type([swagger_userid_object/0]).

-type swagger_userid_object() ::
    #{ '_id' := binary()
     }.

encode(#{ '_id' := Id
        }) ->
    #{ '_id' => Id
     }.
