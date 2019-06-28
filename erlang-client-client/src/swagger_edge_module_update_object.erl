-module(swagger_edge_module_update_object).

-export([encode/1]).

-export_type([swagger_edge_module_update_object/0]).

-type swagger_edge_module_update_object() ::
    #{ 'modulename' := binary(),
       'protocol' := binary(),
       'protocolprops' := binary()
     }.

encode(#{ 'modulename' := Modulename,
          'protocol' := Protocol,
          'protocolprops' := Protocolprops
        }) ->
    #{ 'modulename' => Modulename,
       'protocol' => Protocol,
       'protocolprops' => Protocolprops
     }.
