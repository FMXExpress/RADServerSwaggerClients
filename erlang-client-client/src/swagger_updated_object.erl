-module(swagger_updated_object).

-export([encode/1]).

-export_type([swagger_updated_object/0]).

-type swagger_updated_object() ::
    #{ 'updated' := binary()
     }.

encode(#{ 'updated' := Updated
        }) ->
    #{ 'updated' => Updated
     }.
