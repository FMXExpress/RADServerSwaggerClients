-module(swagger_update_installation_object).

-export([encode/1]).

-export_type([swagger_update_installation_object/0]).

-type swagger_update_installation_object() ::
    #{ 'channels' => list()
     }.

encode(#{ 'channels' := Channels
        }) ->
    #{ 'channels' => Channels
     }.
