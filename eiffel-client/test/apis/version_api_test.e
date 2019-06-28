note
    description: "API tests for VERSION_API"
    date: "$Date$"
    revision: "$Revision$"


class VERSION_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines

    
    test_version
            -- Get version
            -- 
            --  |      Used to retrieve the &#x60;Version&#x60; of the EMS Server. 
        local
            l_response: VERSION_OBJECT
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
                      
            -- l_response := api.version(l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: VERSION_API
            -- Create an object instance of `VERSION_API'.
        once            
            create { VERSION_API } Result
        end

end
