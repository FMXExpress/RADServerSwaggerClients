note
    description: "API tests for APIDOC_API"
    date: "$Date$"
    revision: "$Revision$"


class APIDOC_API_TEST

inherit

    EQA_TEST_SET

feature -- Test routines

    
    test_a_pi
            -- Get API EndPoints
            -- 
            --  |      Used to retrieve all the API EndPoints. 
        local
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
                      
            -- api.a_pi(l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_ap_ij_so_nformat
            -- Get JSON
            -- 
            -- Get API in JSON format 
        local
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
                      
            -- api.ap_ij_so_nformat(l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_ap_iy_am_lformat
            -- Get YAML
            -- 
            -- Get API in YAML format 
        local
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
                      
            -- api.ap_iy_am_lformat(l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end
    
    test_ap_iy_am_lformat__end_point
            -- Get API EndPoint
            -- 
            --  |      Used to retrieve an EndPoint for the API EndPoints. 
        local
            l_item: STRING_32
            l_x__embarcadero__application__id: STRING_32
            l_x__embarcadero__app__secret: STRING_32
            l_x__embarcadero__master__secret: STRING_32
        do
            -- TODO: Initialize required params.
            -- l_item
                      
            -- api.ap_iy_am_lformat__end_point(l_item, l_x__embarcadero__application__id, l_x__embarcadero__app__secret, l_x__embarcadero__master__secret)
            assert ("not_implemented", False)
        end

feature {NONE} -- Implementation

    api: APIDOC_API
            -- Create an object instance of `APIDOC_API'.
        once            
            create { APIDOC_API } Result
        end

end
