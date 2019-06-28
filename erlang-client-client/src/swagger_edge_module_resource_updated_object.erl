-module(swagger_edge_module_resource_updated_object).

-export([encode/1]).

-export_type([swagger_edge_module_resource_updated_object/0]).

-type swagger_edge_module_resource_updated_object() ::
    #{ 'updated' := binary()
     }.

encode(#{ 'updated' := Updated
        }) ->
    #{ 'updated' => Updated
     }.
