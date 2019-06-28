-module(swagger_push_data_object).

-export([encode/1]).

-export_type([swagger_push_data_object/0]).

-type swagger_push_data_object() ::
    #{ 'gcm' => swagger_push_data_object_gcm:swagger_push_data_object_gcm(),
       'aps' => swagger_push_data_object_aps:swagger_push_data_object_aps(),
       'extras' => swagger_push_data_object_extras:swagger_push_data_object_extras()
     }.

encode(#{ 'gcm' := Gcm,
          'aps' := Aps,
          'extras' := Extras
        }) ->
    #{ 'gcm' => Gcm,
       'aps' => Aps,
       'extras' => Extras
     }.
