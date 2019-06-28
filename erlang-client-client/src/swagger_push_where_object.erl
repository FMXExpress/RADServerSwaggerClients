-module(swagger_push_where_object).

-export([encode/1]).

-export_type([swagger_push_where_object/0]).

-type swagger_push_where_object() ::
    #{ 'deviceType' => binary(),
       'deviceToken' => swagger_push_where_object_device_token:swagger_push_where_object_device_token()
     }.

encode(#{ 'deviceType' := DeviceType,
          'deviceToken' := DeviceToken
        }) ->
    #{ 'deviceType' => DeviceType,
       'deviceToken' => DeviceToken
     }.
