-module(swagger__meta_object).

-export([encode/1]).

-export_type([swagger__meta_object/0]).

-type swagger__meta_object() ::
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
