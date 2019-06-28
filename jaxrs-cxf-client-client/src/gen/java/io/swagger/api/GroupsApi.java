package io.swagger.api;

import java.math.BigDecimal;
import io.swagger.model.FieldGroupObject;
import io.swagger.model.GroupAddObject;
import io.swagger.model.GroupObject;
import io.swagger.model.UpdateGroupObject;
import io.swagger.model.UpdatedGroupObject;

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
public interface GroupsApi  {

    /**
     * Add Group
     *
     *  |      Used to add a new &#x60;Group&#x60; object to the EMS database.
     *
     */
    @POST
    @Path("/groups")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Add Group", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK"),
        @ApiResponse(code = 404, message = "Group already exist") })
    public void addGroup(GroupAddObject body, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Delete Group
     *
     *  |      Used to delete a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
     *
     */
    @DELETE
    @Path("/groups/{item}")
    @ApiOperation(value = "Delete Group", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 204, message = "No Content"),
        @ApiResponse(code = 404, message = "Group not found") })
    public void deleteGroup(@PathParam("item") String item, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Get Group
     *
     *  |      Used to retrieve all data from a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
     *
     */
    @GET
    @Path("/groups/{item}")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get Group", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = GroupObject.class) })
    public GroupObject getGroup(@PathParam("item") String item, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Get Fields
     *
     *  |      Used to retrieve all the &#x60;field names&#x60; of the EMS Group (including the custom fields).
     *
     */
    @GET
    @Path("/groups/fields")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get Fields", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = FieldGroupObject.class, responseContainer = "List") })
    public List<FieldGroupObject> getGroupFields(@HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Get Groups
     *
     *  |      Used to retrieve all data from &#x60;Groups&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
     *
     */
    @GET
    @Path("/groups")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get Groups", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = GroupObject.class, responseContainer = "List"),
        @ApiResponse(code = 400, message = "Bad Request") })
    public List<GroupObject> getGroups(@HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret, @QueryParam("skip")BigDecimal skip, @QueryParam("limit")BigDecimal limit, @QueryParam("order")BigDecimal order, @QueryParam("where")String where);

    /**
     * Update Group
     *
     *  |      Used to update a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
     *
     */
    @PUT
    @Path("/groups/{item}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Update Group", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = UpdatedGroupObject.class),
        @ApiResponse(code = 404, message = "Group not found / User not found") })
    public UpdatedGroupObject updateGroup(@PathParam("item") String item, UpdateGroupObject body, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);
}

