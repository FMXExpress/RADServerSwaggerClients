-module(swagger_push_data_object_gcm).

-export([encode/1]).

-export_type([swagger_push_data_object_gcm/0]).

-type swagger_push_data_object_gcm() ::
    #{ 'message' => binary(),
       'title' => binary()
     }.

encode(#{ 'message' := Message,
          'title' := Title
        }) ->
    #{ 'message' => Message,
       'title' => Title
     }.
