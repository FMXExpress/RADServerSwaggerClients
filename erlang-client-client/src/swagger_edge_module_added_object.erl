-module(swagger_edge_module_added_object).

-export([encode/1]).

-export_type([swagger_edge_module_added_object/0]).

-type swagger_edge_module_added_object() ::
    #{ '_id' := binary(),
       'modulename' := binary()
     }.

encode(#{ '_id' := Id,
          'modulename' := Modulename
        }) ->
    #{ '_id' => Id,
       'modulename' => Modulename
     }.
