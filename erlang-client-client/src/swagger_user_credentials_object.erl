-module(swagger_user_credentials_object).

-export([encode/1]).

-export_type([swagger_user_credentials_object/0]).

-type swagger_user_credentials_object() ::
    #{ 'username' := binary(),
       'password' := binary()
     }.

encode(#{ 'username' := Username,
          'password' := Password
        }) ->
    #{ 'username' => Username,
       'password' => Password
     }.
