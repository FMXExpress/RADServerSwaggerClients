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
class USER_CREDENTIALS_OBJECT 

inherit

  ANY
      redefine
          out 
      end


feature --Access

    username: detachable STRING_32 
      
    password: detachable STRING_32 
      

feature -- Change Element  
 
    set_username (a_name: like username)
        -- Set 'username' with 'a_name'.
      do
        username := a_name
      ensure
        username_set: username = a_name		
      end

    set_password (a_name: like password)
        -- Set 'password' with 'a_name'.
      do
        password := a_name
      ensure
        password_set: password = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass USER_CREDENTIALS_OBJECT%N")
        if attached username as l_username then
          Result.append ("%Nusername:")
          Result.append (l_username.out)
          Result.append ("%N")    
        end  
        if attached password as l_password then
          Result.append ("%Npassword:")
          Result.append (l_password.out)
          Result.append ("%N")    
        end  
      end
end


