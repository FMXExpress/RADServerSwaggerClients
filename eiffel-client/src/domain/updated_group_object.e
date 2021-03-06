note
 description:"[
		EMS API Documentation
 		Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
  		OpenAPI spec version: 0.0.0
 	    

  	NOTE: This class is auto generated by the swagger code generator program.

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel swagger codegen", "src=https://github.com/swagger-api/swagger-codegen.git", "protocol=uri"
class UPDATED_GROUP_OBJECT 

inherit

  ANY
      redefine
          out 
      end


feature --Access

    updated: detachable STRING_32 
      

feature -- Change Element  
 
    set_updated (a_name: like updated)
        -- Set 'updated' with 'a_name'.
      do
        updated := a_name
      ensure
        updated_set: updated = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass UPDATED_GROUP_OBJECT%N")
        if attached updated as l_updated then
          Result.append ("%Nupdated:")
          Result.append (l_updated.out)
          Result.append ("%N")    
        end  
      end
end


