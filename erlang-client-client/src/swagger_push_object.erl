-module(swagger_push_object).

-export([encode/1]).

-export_type([swagger_push_object/0]).

-type swagger_push_object() ::
    #{ 'data' := swagger_push_data_object:swagger_push_data_object(),
       'channels' => list(),
       'where' := swagger_push_where_object:swagger_push_where_object()
     }.

encode(#{ 'data' := Data,
          'channels' := Channels,
          'where' := Where
        }) ->
    #{ 'data' => Data,
       'channels' => Channels,
       'where' => Where
     }.
