package io.swagger.api;

import java.math.BigDecimal;
import io.swagger.model.FieldObject;
import io.swagger.model.UpdateObject;
import io.swagger.model.UpdatedObject;
import io.swagger.model.UserCredentialsObject;
import io.swagger.model.UserObject;
import io.swagger.model.UserSignUpResponseObject;
import io.swagger.model.UserTokenObject;
import io.swagger.model.UseridObject;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import javax.ws.rs.*;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.MediaType;
import org.apache.cxf.jaxrs.ext.multipart.*;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponses;
import io.swagger.annotations.ApiResponse;
import io.swagger.jaxrs.PATCH;

/**
 * EMS API Documentation
 *
 * <p>Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 */
@Path("/")
@Api(value = "/", description = "")
public interface UsersApi  {

    /**
     * Add User
     *
     *  |      Used to add a new &#x60;User&#x60; object to the EMS database.
     *
     */
    @POST
    @Path("/users")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Add User", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 201, message = "User Created", response = UseridObject.class),
        @ApiResponse(code = 409, message = "User already exists") })
    public UseridObject addUser(UserCredentialsObject body, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Delete User
     *
     *  |      Used to delete a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
     *
     */
    @DELETE
    @Path("/users/{id}")
    @ApiOperation(value = "Delete User", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 204, message = "No Content"),
        @ApiResponse(code = 404, message = "The request does not identify a known application, resource, endpoint, or entity") })
    public void deleteUser(@PathParam("id") String id, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Get User
     *
     *  |      Used to retrieve all data from a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
     *
     */
    @GET
    @Path("/users/{id}")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get User", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = UserObject.class) })
    public UserObject getUser(@PathParam("id") String id, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Get Fields
     *
     *  |      Used to retrieve all the &#x60;field names&#x60; of the EMS Users (including the custom fields).
     *
     */
    @GET
    @Path("/users/fields")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get Fields", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = FieldObject.class, responseContainer = "List") })
    public List<FieldObject> getUserFields(@HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Get User Groups
     *
     *  |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.
     *
     */
    @GET
    @Path("/users/{id}/groups")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get User Groups", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = String.class, responseContainer = "List") })
    public List<String> getUserGroups(@PathParam("id") String id, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Get Users
     *
     *  |      Used to retrieve all data from &#x60;Users&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
     *
     */
    @GET
    @Path("/users")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get Users", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = UserObject.class, responseContainer = "List"),
        @ApiResponse(code = 400, message = "Bad Request") })
    public List<UserObject> getUsers(@HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret, @QueryParam("skip")BigDecimal skip, @QueryParam("limit")BigDecimal limit, @QueryParam("order")BigDecimal order, @QueryParam("where")String where);

    /**
     * Log In
     *
     *  |      Logs in to the EMS Server with a specific EMS User.
     *
     */
    @POST
    @Path("/users/login")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Log In", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = UserTokenObject.class),
        @ApiResponse(code = 401, message = "The credentials of the request are not authorized for the requested operation."),
        @ApiResponse(code = 404, message = "User not found") })
    public UserTokenObject loginUser(UserCredentialsObject body, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * sPostLogoutSummaryTitle
     *
     * sPostLogoutSummaryDesc
     *
     */
    @POST
    @Path("/users/logout")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "sPostLogoutSummaryTitle", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK"),
        @ApiResponse(code = 404, message = "User not found") })
    public void logoutUser(@HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Sign Up  User
     *
     *  |      Signs up to the EMS Server with an appropriate EMS User.
     *
     */
    @POST
    @Path("/users/signup")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Sign Up  User", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = UserSignUpResponseObject.class),
        @ApiResponse(code = 409, message = "User already exists") })
    public UserSignUpResponseObject signupUser(UserCredentialsObject body, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Update User
     *
     *  |      Used to update a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
     *
     */
    @PUT
    @Path("/users/{id}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Update User", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = UpdatedObject.class),
        @ApiResponse(code = 400, message = "Operation could not be completed because one or more dynamic names conflicts with a static name.") })
    public UpdatedObject updateUser(@PathParam("id") String id, UpdateObject body, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);
}

