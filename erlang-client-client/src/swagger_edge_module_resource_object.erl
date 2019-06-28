-module(swagger_edge_module_resource_object).

-export([encode/1]).

-export_type([swagger_edge_module_resource_object/0]).

-type swagger_edge_module_resource_object() ::
    #{ 'resourcename' := binary(),
       'modulename' := binary(),
       'moduleid' := binary(),
       '_meta' := swagger__meta_edge_module_object:swagger__meta_edge_module_object()
     }.

encode(#{ 'resourcename' := Resourcename,
          'modulename' := Modulename,
          'moduleid' := Moduleid,
          '_meta' := Meta
        }) ->
    #{ 'resourcename' => Resourcename,
       'modulename' => Modulename,
       'moduleid' => Moduleid,
       '_meta' => Meta
     }.
