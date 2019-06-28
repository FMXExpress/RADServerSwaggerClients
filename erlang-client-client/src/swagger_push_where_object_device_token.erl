-module(swagger_push_where_object_device_token).

-export([encode/1]).

-export_type([swagger_push_where_object_device_token/0]).

-type swagger_push_where_object_device_token() ::
    #{ 'in' := list()
     }.

encode(#{ 'in' := In
        }) ->
    #{ '$in' => In
     }.
