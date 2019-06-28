-module(swagger_installation_added_object).

-export([encode/1]).

-export_type([swagger_installation_added_object/0]).

-type swagger_installation_added_object() ::
    #{ '_id' := binary()
     }.

encode(#{ '_id' := Id
        }) ->
    #{ '_id' => Id
     }.
