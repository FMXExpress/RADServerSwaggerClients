-module(swagger_field_object_fields).

-export([encode/1]).

-export_type([swagger_field_object_fields/0]).

-type swagger_field_object_fields() ::
    #{ 'name' => binary()
     }.

encode(#{ 'name' := Name
        }) ->
    #{ 'name' => Name
     }.
