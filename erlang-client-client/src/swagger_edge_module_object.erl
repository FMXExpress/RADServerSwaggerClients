-module(swagger_edge_module_object).

-export([encode/1]).

-export_type([swagger_edge_module_object/0]).

-type swagger_edge_module_object() ::
    #{ 'modulename' := binary(),
       '_id' := binary(),
       'protocol' := binary(),
       'protocolprops' := binary(),
       '_meta' := swagger__meta_edge_module_object:swagger__meta_edge_module_object()
     }.

encode(#{ 'modulename' := Modulename,
          '_id' := Id,
          'protocol' := Protocol,
          'protocolprops' := Protocolprops,
          '_meta' := Meta
        }) ->
    #{ 'modulename' => Modulename,
       '_id' => Id,
       'protocol' => Protocol,
       'protocolprops' => Protocolprops,
       '_meta' => Meta
     }.
