-module(swagger_update_object).

-export([encode/1]).

-export_type([swagger_update_object/0]).

-type swagger_update_object() ::
    #{ 'fieldName' => binary()
     }.

encode(#{ 'fieldName' := FieldName
        }) ->
    #{ 'fieldName' => FieldName
     }.
