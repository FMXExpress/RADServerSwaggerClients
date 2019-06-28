note
    description: "API tests for EDGEMODULES_API"
    date: "$Date$"
    revision: "$Revision$"


class EDGEMODULES_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines

    
    test_module
            -- Get Module
            -- 
            --  |      Used to retrieve all data from &#x60;EdgeModule&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by. 
        local
            l_response: EDGE_MODULE_OBJECT
            l_mname: STRING_32
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_mname
                      
            -- l_response := api.module(l_mname, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_module_resource
            -- Get EdgeModule Resource
            -- 
            --  |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource. 
        local
            l_response: EDGE_MODULE_RESOURCE_OBJECT
            l_mname: STRING_32
            l_name: STRING_32
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_mname
            -- l_name
                      
            -- l_response := api.module_resource(l_mname, l_name, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_module_resources
            -- Get EdgeModule Resources
            -- 
            --  |      Used to retrieve all data from the resources of an EdgeModule. 
        local
            l_response: LIST [EDGE_MODULE_RESOURCE_OBJECT]
            l_mname: STRING_32
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_mname
                      
            -- l_response := api.module_resources(l_mname, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_modules
            -- Get Module
            -- 
            --  |      Used to retrieve all data from &#x60;EdgeModule&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by. 
        local
            l_response: LIST [EDGE_MODULE_OBJECT]
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
                      
            -- l_response := api.modules(l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_modules_fields
            -- Get Fields
            -- 
            --  |      Used to retrieve all the &#x60;field names&#x60; of the EMS EdgeModule (including the custom fields). 
        local
            l_response: FIELDS_EDGE_MODULE_OBJECT
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
                      
            -- l_response := api.modules_fields(l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_register_module
            -- Add Module
            -- 
            --  |      Used to add a new &#x60;EdgeModule&#x60; object to the EMS database. 
        local
            l_response: EDGE_MODULE_ADDED_OBJECT
            l_body: EDGE_MODULE_ADD_OBJECT
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_body
                      
            -- l_response := api.register_module(l_body, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_register_module_resource
            -- Add Module Resource
            -- 
            --  |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. 
        local
            l_response: EDGE_MODULE_RESOURCE_ADDED_OBJECT
            l_mname: STRING_32
            l_body: EDGE_MODULE_RESOURCE_ADD_OBJECT
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_mname
            -- l_body
                      
            -- l_response := api.register_module_resource(l_mname, l_body, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_resources
            -- Get EdgeModules Resources
            -- 
            --  |      Used to retrieve all data from the resources of all EdgeModules. 
        local
            l_response: LIST [EDGE_MODULE_RESOURCE_OBJECT]
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
                      
            -- l_response := api.resources(l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_resources_fields
            -- Get Resource Fields
            -- 
            --  |      Used to retrieve the &#x60;field names&#x60; of all the resources of the EMS EdgeModule (including the custom fields). 
        local
            l_response: FIELDS_EDGE_MODULE_OBJECT
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
                      
            -- l_response := api.resources_fields(l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_unregister_module
            -- Delete Module
            -- 
            --  |      Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource. 
        local
            l_mname: STRING_32
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_mname
                      
            -- api.unregister_module(l_mname, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_unregister_module_resource
            -- Delete Module Resource
            -- 
            --  |      Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource. 
        local
            l_mname: STRING_32
            l_name: STRING_32
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_mname
            -- l_name
                      
            -- api.unregister_module_resource(l_mname, l_name, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_update_module
            -- Update Module
            -- 
            --  |      Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. 
        local
            l_response: EDGE_MODULE_UPDATED_OBJECT
            l_mname: STRING_32
            l_body: EDGE_MODULE_UPDATE_OBJECT
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_mname
            -- l_body
                      
            -- l_response := api.update_module(l_mname, l_body, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_update_module_resource
            -- Update Module Resource
            -- 
            --  |      Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. 
        local
            l_response: EDGE_MODULE_RESOURCE_UPDATED_OBJECT
            l_mname: STRING_32
            l_name: STRING_32
            l_body: EDGE_MODULE_RESOURCE_UPDATE_OBJECT
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_mname
            -- l_name
            -- l_body
                      
            -- l_response := api.update_module_resource(l_mname, l_name, l_body, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: EDGEMODULES_API
            -- Create an object instance of `EDGEMODULES_API'.
        once            
            create { EDGEMODULES_API } Result
        end

end
