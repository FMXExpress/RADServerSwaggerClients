package io.swagger.api;

import java.math.BigDecimal;
import io.swagger.model.FieldInstallationObject;
import io.swagger.model.InstallationAddObject;
import io.swagger.model.InstallationAddedObject;
import io.swagger.model.InstallationObject;
import io.swagger.model.UpdateInstallationObject;
import io.swagger.model.UpdatedInstallationObject;

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
public interface InstallationsApi  {

    /**
     * Add Installation
     *
     *  |      Used to add a new &#x60;Installation&#x60; object to the EMS database.
     *
     */
    @POST
    @Path("/installations")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Add Installation", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 201, message = "OK", response = InstallationAddedObject.class),
        @ApiResponse(code = 404, message = "Installation already exists") })
    public InstallationAddedObject addInstallation(InstallationAddObject body, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Delete Installation
     *
     *  |      Used to delete an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database.
     *
     */
    @DELETE
    @Path("/installations/{id}")
    @ApiOperation(value = "Delete Installation", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 204, message = "No Content"),
        @ApiResponse(code = 404, message = "Not Found") })
    public void deleteInstallation(@PathParam("id") String id, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Get Installation Channels
     *
     *  |       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
     *
     */
    @GET
    @Path("/installations/channels")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get Installation Channels", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = String.class, responseContainer = "List") })
    public List<String> getChannels(@HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Get Installation
     *
     *  |      Used to retrieve all data from a specific &#x60;Installation&#x60; (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
     *
     */
    @GET
    @Path("/installations/{id}")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get Installation", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = InstallationObject.class),
        @ApiResponse(code = 404, message = "Group not found / User not found") })
    public InstallationObject getInstallation(@PathParam("id") String id, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Get Fields
     *
     *  |      Used to retrieve all the &#x60;field names&#x60; of the EMS Installation (including the custom fields).
     *
     */
    @GET
    @Path("/installations/fields")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get Fields", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = FieldInstallationObject.class, responseContainer = "List") })
    public List<FieldInstallationObject> getInstallationFields(@HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Get Installations
     *
     *  |      Used to retrieve all data from &#x60;Installation&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
     *
     */
    @GET
    @Path("/installations")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get Installations", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = InstallationObject.class, responseContainer = "List") })
    public List<InstallationObject> getInstallations(@HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret, @QueryParam("skip")BigDecimal skip, @QueryParam("limit")BigDecimal limit, @QueryParam("order")BigDecimal order, @QueryParam("where")String where);

    /**
     * Update Installation
     *
     *  |      Used to update an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database.
     *
     */
    @PUT
    @Path("/installations/{id}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Update Installation", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = UpdatedInstallationObject.class),
        @ApiResponse(code = 404, message = "Not Found") })
    public UpdatedInstallationObject updateInstallation(@PathParam("id") String id, UpdateInstallationObject body, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);
}

