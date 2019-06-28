-module(swagger_push_data_object_aps).

-export([encode/1]).

-export_type([swagger_push_data_object_aps/0]).

-type swagger_push_data_object_aps() ::
    #{ 'alert' => binary(),
       'badge' => binary(),
       'sound' => binary()
     }.

encode(#{ 'alert' := Alert,
          'badge' := Badge,
          'sound' := Sound
        }) ->
    #{ 'alert' => Alert,
       'badge' => Badge,
       'sound' => Sound
     }.
