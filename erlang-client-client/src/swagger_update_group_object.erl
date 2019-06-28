-module(swagger_update_group_object).

-export([encode/1]).

-export_type([swagger_update_group_object/0]).

-type swagger_update_group_object() ::
    #{ 'fieldName' => binary(),
       'users' => list()
     }.

encode(#{ 'fieldName' := FieldName,
          'users' := Users
        }) ->
    #{ 'fieldName' => FieldName,
       'users' => Users
     }.
