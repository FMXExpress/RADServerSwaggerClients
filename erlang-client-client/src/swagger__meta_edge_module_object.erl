-module(swagger__meta_edge_module_object).

-export([encode/1]).

-export_type([swagger__meta_edge_module_object/0]).

-type swagger__meta_edge_module_object() ::
    #{ 'creator' := binary(),
       'created' := binary(),
       'updated' => binary()
     }.

encode(#{ 'creator' := Creator,
          'created' := Created,
          'updated' := Updated
        }) ->
    #{ 'creator' => Creator,
       'created' => Created,
       'updated' => Updated
     }.
