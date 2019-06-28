-module(swagger_version_object).

-export([encode/1]).

-export_type([swagger_version_object/0]).

-type swagger_version_object() ::
    #{ 'version' => binary(),
       'server' => binary()
     }.

encode(#{ 'version' := Version,
          'server' := Server
        }) ->
    #{ 'version' => Version,
       'server' => Server
     }.
