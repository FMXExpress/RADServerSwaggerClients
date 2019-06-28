-module(swagger_fields_edge_module_object).

-export([encode/1]).

-export_type([swagger_fields_edge_module_object/0]).

-type swagger_fields_edge_module_object() ::
    #{ 'name' := binary(),
       'fields' => list(),
       'custom' => boolean()
     }.

encode(#{ 'name' := Name,
          'fields' := Fields,
          'custom' := Custom
        }) ->
    #{ 'name' => Name,
       'fields' => Fields,
       'custom' => Custom
     }.
