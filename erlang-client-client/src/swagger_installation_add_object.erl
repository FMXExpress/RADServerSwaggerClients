-module(swagger_installation_add_object).

-export([encode/1]).

-export_type([swagger_installation_add_object/0]).

-type swagger_installation_add_object() ::
    #{ 'deviceToken' := binary(),
       'deviceType' := binary(),
       'channels' => list()
     }.

encode(#{ 'deviceToken' := DeviceToken,
          'deviceType' := DeviceType,
          'channels' := Channels
        }) ->
    #{ 'deviceToken' => DeviceToken,
       'deviceType' => DeviceType,
       'channels' => Channels
     }.
