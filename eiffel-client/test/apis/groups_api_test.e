note
    description: "API tests for GROUPS_API"
    date: "$Date$"
    revision: "$Revision$"


class GROUPS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines

    
    test_add_group
            -- Add Group
            -- 
            --  |      Used to add a new &#x60;Group&#x60; object to the EMS database. 
        local
            l_body: GROUP_ADD_OBJECT
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_body
                      
            -- api.add_group(l_body, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_delete_group
            -- Delete Group
            -- 
            --  |      Used to delete a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database. 
        local
            l_item: STRING_32
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_item
                      
            -- api.delete_group(l_item, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_group
            -- Get Group
            -- 
            --  |      Used to retrieve all data from a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database. 
        local
            l_response: GROUP_OBJECT
            l_item: STRING_32
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_item
                      
            -- l_response := api.group(l_item, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_group_fields
            -- Get Fields
            -- 
            --  |      Used to retrieve all the &#x60;field names&#x60; of the EMS Group (including the custom fields). 
        local
            l_response: LIST [FIELD_GROUP_OBJECT]
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
                      
            -- l_response := api.group_fields(l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_groups
            -- Get Groups
            -- 
            --  |      Used to retrieve all data from &#x60;Groups&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by. 
        local
            l_response: LIST [GROUP_OBJECT]
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
            l_skip: REAL_32
            l_limit: REAL_32
            l_order: REAL_32
            l_where: STRING_32
        do
            -- TODO: Initialize required params.
                      
            -- l_response := api.groups(l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret, l_skip, l_limit, l_order, l_where)
            assert ("not_implemented", False)
        end
    
    test_update_group
            -- Update Group
            -- 
            --  |      Used to update a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database. 
        local
            l_response: UPDATED_GROUP_OBJECT
            l_item: STRING_32
            l_body: UPDATE_GROUP_OBJECT
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_item
            -- l_body
                      
            -- l_response := api.update_group(l_item, l_body, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: GROUPS_API
            -- Create an object instance of `GROUPS_API'.
        once            
            create { GROUPS_API } Result
        end

end
