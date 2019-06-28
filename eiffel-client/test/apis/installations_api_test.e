note
    description: "API tests for INSTALLATIONS_API"
    date: "$Date$"
    revision: "$Revision$"


class INSTALLATIONS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines

    
    test_add_installation
            -- Add Installation
            -- 
            --  |      Used to add a new &#x60;Installation&#x60; object to the EMS database. 
        local
            l_response: INSTALLATION_ADDED_OBJECT
            l_body: INSTALLATION_ADD_OBJECT
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_body
                      
            -- l_response := api.add_installation(l_body, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_channels
            -- Get Installation Channels
            -- 
            --  |       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database. 
        local
            l_response: LIST [CHANNEL_NAME]
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
                      
            -- l_response := api.channels(l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_delete_installation
            -- Delete Installation
            -- 
            --  |      Used to delete an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database. 
        local
            l_id: STRING_32
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_id
                      
            -- api.delete_installation(l_id, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_installation
            -- Get Installation
            -- 
            --  |      Used to retrieve all data from a specific &#x60;Installation&#x60; (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database. 
        local
            l_response: INSTALLATION_OBJECT
            l_id: STRING_32
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_id
                      
            -- l_response := api.installation(l_id, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_installation_fields
            -- Get Fields
            -- 
            --  |      Used to retrieve all the &#x60;field names&#x60; of the EMS Installation (including the custom fields). 
        local
            l_response: LIST [FIELD_INSTALLATION_OBJECT]
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
                      
            -- l_response := api.installation_fields(l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_installations
            -- Get Installations
            -- 
            --  |      Used to retrieve all data from &#x60;Installation&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by. 
        local
            l_response: LIST [INSTALLATION_OBJECT]
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
            l_skip: REAL_32
            l_limit: REAL_32
            l_order: REAL_32
            l_where: STRING_32
        do
            -- TODO: Initialize required params.
                      
            -- l_response := api.installations(l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret, l_skip, l_limit, l_order, l_where)
            assert ("not_implemented", False)
        end
    
    test_update_installation
            -- Update Installation
            -- 
            --  |      Used to update an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database. 
        local
            l_response: UPDATED_INSTALLATION_OBJECT
            l_id: STRING_32
            l_body: UPDATE_INSTALLATION_OBJECT
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_id
            -- l_body
                      
            -- l_response := api.update_installation(l_id, l_body, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: INSTALLATIONS_API
            -- Create an object instance of `INSTALLATIONS_API'.
        once            
            create { INSTALLATIONS_API } Result
        end

end
