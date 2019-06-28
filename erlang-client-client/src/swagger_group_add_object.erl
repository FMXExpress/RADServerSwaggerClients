-module(swagger_group_add_object).

-export([encode/1]).

-export_type([swagger_group_add_object/0]).

-type swagger_group_add_object() ::
    #{ 'groupname' := binary()
     }.

encode(#{ 'groupname' := Groupname
        }) ->
    #{ 'groupname' => Groupname
     }.
