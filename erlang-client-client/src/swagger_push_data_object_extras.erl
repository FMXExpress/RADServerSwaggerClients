-module(swagger_push_data_object_extras).

-export([encode/1]).

-export_type([swagger_push_data_object_extras/0]).

-type swagger_push_data_object_extras() ::
    #{ 'message' => binary()
     }.

encode(#{ 'message' := Message
        }) ->
    #{ 'message' => Message
     }.
