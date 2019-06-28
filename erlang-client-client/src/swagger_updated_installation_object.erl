-module(swagger_updated_installation_object).

-export([encode/1]).

-export_type([swagger_updated_installation_object/0]).

-type swagger_updated_installation_object() ::
    #{ 'updated' := binary()
     }.

encode(#{ 'updated' := Updated
        }) ->
    #{ 'updated' => Updated
     }.
