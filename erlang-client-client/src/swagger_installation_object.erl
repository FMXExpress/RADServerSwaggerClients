-module(swagger_installation_object).

-export([encode/1]).

-export_type([swagger_installation_object/0]).

-type swagger_installation_object() ::
    #{ '_id' := binary(),
       'deviceToken' := binary(),
       'deviceType' := binary(),
       '_meta' := swagger__meta_installation_object:swagger__meta_installation_object(),
       'channels' => list()
     }.

encode(#{ '_id' := Id,
          'deviceToken' := DeviceToken,
          'deviceType' := DeviceType,
          '_meta' := Meta,
          'channels' := Channels
        }) ->
    #{ '_id' => Id,
       'deviceToken' => DeviceToken,
       'deviceType' => DeviceType,
       '_meta' => Meta,
       'channels' => Channels
     }.
