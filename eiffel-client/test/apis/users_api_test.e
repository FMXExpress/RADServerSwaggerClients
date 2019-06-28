note
    description: "API tests for USERS_API"
    date: "$Date$"
    revision: "$Revision$"


class USERS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines

    
    test_add_user
            -- Add User
            -- 
            --  |      Used to add a new &#x60;User&#x60; object to the EMS database. 
        local
            l_response: USERID_OBJECT
            l_body: USER_CREDENTIALS_OBJECT
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_body
                      
            -- l_response := api.add_user(l_body, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_delete_user
            -- Delete User
            -- 
            --  |      Used to delete a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database. 
        local
            l_id: STRING_32
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_id
                      
            -- api.delete_user(l_id, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_login_user
            -- Log In
            -- 
            --  |      Logs in to the EMS Server with a specific EMS User. 
        local
            l_response: USER_TOKEN_OBJECT
            l_body: USER_CREDENTIALS_OBJECT
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_body
                      
            -- l_response := api.login_user(l_body, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_logout_user
            -- sPostLogoutSummaryTitle
            -- 
            -- sPostLogoutSummaryDesc 
        local
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
                      
            -- api.logout_user(l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_signup_user
            -- Sign Up  User
            -- 
            --  |      Signs up to the EMS Server with an appropriate EMS User. 
        local
            l_response: USER_SIGN_UP_RESPONSE_OBJECT
            l_body: USER_CREDENTIALS_OBJECT
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_body
                      
            -- l_response := api.signup_user(l_body, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_update_user
            -- Update User
            -- 
            --  |      Used to update a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database. 
        local
            l_response: UPDATED_OBJECT
            l_id: STRING_32
            l_body: UPDATE_OBJECT
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_id
            -- l_body
                      
            -- l_response := api.update_user(l_id, l_body, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_user
            -- Get User
            -- 
            --  |      Used to retrieve all data from a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database. 
        local
            l_response: USER_OBJECT
            l_id: STRING_32
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_id
                      
            -- l_response := api.user(l_id, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_user_fields
            -- Get Fields
            -- 
            --  |      Used to retrieve all the &#x60;field names&#x60; of the EMS Users (including the custom fields). 
        local
            l_response: LIST [FIELD_OBJECT]
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
                      
            -- l_response := api.user_fields(l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_user_groups
            -- Get User Groups
            -- 
            --  |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database. 
        local
            l_response: LIST [GROUP_NAME]
            l_id: STRING_32
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_id
                      
            -- l_response := api.user_groups(l_id, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_users
            -- Get Users
            -- 
            --  |      Used to retrieve all data from &#x60;Users&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by. 
        local
            l_response: LIST [USER_OBJECT]
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
            l_skip: REAL_32
            l_limit: REAL_32
            l_order: REAL_32
            l_where: STRING_32
        do
            -- TODO: Initialize required params.
                      
            -- l_response := api.users(l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret, l_skip, l_limit, l_order, l_where)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: USERS_API
            -- Create an object instance of `USERS_API'.
        once            
            create { USERS_API } Result
        end

end
