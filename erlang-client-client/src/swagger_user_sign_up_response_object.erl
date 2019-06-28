-module(swagger_user_sign_up_response_object).

-export([encode/1]).

-export_type([swagger_user_sign_up_response_object/0]).

-type swagger_user_sign_up_response_object() ::
    #{ '_id' := binary(),
       'sessionToken' := binary()
     }.

encode(#{ '_id' := Id,
          'sessionToken' := SessionToken
        }) ->
    #{ '_id' => Id,
       'sessionToken' => SessionToken
     }.
