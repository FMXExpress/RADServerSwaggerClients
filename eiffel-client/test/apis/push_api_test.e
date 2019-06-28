note
    description: "API tests for PUSH_API"
    date: "$Date$"
    revision: "$Revision$"


class PUSH_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines

    
    test_send
            -- Send Push
            -- 
            -- Used to send a push notification message to a registered device 
        local
            l_body: PUSH_OBJECT
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_body
                      
            -- api.send(l_body, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: PUSH_API
            -- Create an object instance of `PUSH_API'.
        once            
            create { PUSH_API } Result
        end

end
