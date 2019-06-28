-module(swagger_edge_module_resource_update_object).

-export([encode/1]).

-export_type([swagger_edge_module_resource_update_object/0]).

-type swagger_edge_module_resource_update_object() ::
    #{ 'resourcename' => binary()
     }.

encode(#{ 'resourcename' := Resourcename
        }) ->
    #{ 'resourcename' => Resourcename
     }.
