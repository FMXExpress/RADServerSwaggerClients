-module(swagger_group_object).

-export([encode/1]).

-export_type([swagger_group_object/0]).

-type swagger_group_object() ::
    #{ 'name' := binary(),
       '_meta' := swagger__meta_group_object:swagger__meta_group_object(),
       'users' => list()
     }.

encode(#{ 'name' := Name,
          '_meta' := Meta,
          'users' := Users
        }) ->
    #{ 'name' => Name,
       '_meta' => Meta,
       'users' => Users
     }.
