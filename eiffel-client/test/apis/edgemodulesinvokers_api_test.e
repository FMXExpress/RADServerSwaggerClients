note
    description: "API tests for EDGEMODULESINVOKERS_API"
    date: "$Date$"
    revision: "$Revision$"


class EDGEMODULESINVOKERS_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines

    
    test_delete_resource_endpoint
            -- Invoke Resource Delete Method
            -- 
            -- Used to invoke the DELETE method of the resource from an existing EMS EdgeModule. 
        local
            l_mname: STRING_32
            l_rname: STRING_32
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_mname
            -- l_rname
                      
            -- api.delete_resource_endpoint(l_mname, l_rname, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_delete_resource_endpoint_item
            -- Invoke Resource/_* Delete Method
            -- 
            -- Used to invoke the DELETE method of the resource from an existing EMS EdgeModule. 
        local
            l_mname: STRING_32
            l_rname: STRING_32
            l_wildcard: STRING_32
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_mname
            -- l_rname
            -- l_wildcard
                      
            -- api.delete_resource_endpoint_item(l_mname, l_rname, l_wildcard, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_patch_resource_endpoint
            -- Invoke Resource Patch Method
            -- 
            -- Used to invoke the PATCH method of the resource from an existing EMS EdgeModule. 
        local
            l_mname: STRING_32
            l_rname: STRING_32
            l_body: ANY
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_mname
            -- l_rname
            -- l_body
                      
            -- api.patch_resource_endpoint(l_mname, l_rname, l_body, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_patch_resource_endpoint_item
            -- Invoke Resource/_* Patch Method
            -- 
            -- Used to invoke the PATCH method of the resource from an existing EMS EdgeModule. 
        local
            l_mname: STRING_32
            l_rname: STRING_32
            l_wildcard: STRING_32
            l_body: ANY
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_mname
            -- l_rname
            -- l_wildcard
            -- l_body
                      
            -- api.patch_resource_endpoint_item(l_mname, l_rname, l_wildcard, l_body, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_post_resource_endpoint
            -- Invoke Resource Post Method
            -- 
            -- Used to invoke the POST method of the resource from an existing EMS EdgeModule. 
        local
            l_mname: STRING_32
            l_rname: STRING_32
            l_body: ANY
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_mname
            -- l_rname
            -- l_body
                      
            -- api.post_resource_endpoint(l_mname, l_rname, l_body, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_post_resource_endpoint_item
            -- Invoke Resource/_* Post Method
            -- 
            -- Used to invoke the POST method of the resource from an existing EMS EdgeModule. 
        local
            l_mname: STRING_32
            l_rname: STRING_32
            l_wildcard: STRING_32
            l_body: ANY
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_mname
            -- l_rname
            -- l_wildcard
            -- l_body
                      
            -- api.post_resource_endpoint_item(l_mname, l_rname, l_wildcard, l_body, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_put_resource_endpoint
            -- Invoke Resource Put Method
            -- 
            -- Used to invoke the PUT method of the resource from an existing EMS EdgeModule. 
        local
            l_mname: STRING_32
            l_rname: STRING_32
            l_body: ANY
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_mname
            -- l_rname
            -- l_body
                      
            -- api.put_resource_endpoint(l_mname, l_rname, l_body, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_put_resource_endpoint_item
            -- Invoke Resource/_* Put Method
            -- 
            -- Used to invoke the PUT method of the resource from an existing EMS EdgeModule. 
        local
            l_mname: STRING_32
            l_rname: STRING_32
            l_wildcard: STRING_32
            l_body: ANY
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_mname
            -- l_rname
            -- l_wildcard
            -- l_body
                      
            -- api.put_resource_endpoint_item(l_mname, l_rname, l_wildcard, l_body, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_resource_endpoint
            -- Invoke Resource Get Method
            -- 
            -- Used to invoke the GET method of the resource from an existing EMS EdgeModule. 
        local
            l_mname: STRING_32
            l_rname: STRING_32
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_mname
            -- l_rname
                      
            -- api.resource_endpoint(l_mname, l_rname, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_resource_endpoint_item
            -- Invoke Resource/_* Get Method
            -- 
            -- Used to invoke the GET method of the resource from an existing EMS EdgeModule. 
        local
            l_mname: STRING_32
            l_rname: STRING_32
            l_wildcard: STRING_32
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_mname
            -- l_rname
            -- l_wildcard
                      
            -- api.resource_endpoint_item(l_mname, l_rname, l_wildcard, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: EDGEMODULESINVOKERS_API
            -- Create an object instance of `EDGEMODULESINVOKERS_API'.
        once            
            create { EDGEMODULESINVOKERS_API } Result
        end

end
