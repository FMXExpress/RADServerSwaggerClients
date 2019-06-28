package io.swagger.api;

import io.swagger.model.EdgeModuleAddObject;
import io.swagger.model.EdgeModuleAddedObject;
import io.swagger.model.EdgeModuleObject;
import io.swagger.model.EdgeModuleResourceAddObject;
import io.swagger.model.EdgeModuleResourceAddedObject;
import io.swagger.model.EdgeModuleResourceObject;
import io.swagger.model.EdgeModuleResourceUpdateObject;
import io.swagger.model.EdgeModuleResourceUpdatedObject;
import io.swagger.model.EdgeModuleUpdateObject;
import io.swagger.model.EdgeModuleUpdatedObject;
import io.swagger.model.FieldsEdgeModuleObject;

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
public interface EdgeModulesApi  {

    /**
     * Get Module
     *
     *  |      Used to retrieve all data from &#x60;EdgeModule&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
     *
     */
    @GET
    @Path("/edgemodules/{mname}")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get Module", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = EdgeModuleObject.class),
        @ApiResponse(code = 404, message = "Not Found") })
    public EdgeModuleObject getModule(@PathParam("mname") String mname, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Get EdgeModule Resource
     *
     *  |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.
     *
     */
    @GET
    @Path("/edgemodules/{mname}/resources/{name}")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get EdgeModule Resource", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = EdgeModuleResourceObject.class),
        @ApiResponse(code = 404, message = "Not Found") })
    public EdgeModuleResourceObject getModuleResource(@PathParam("mname") String mname, @PathParam("name") String name, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Get EdgeModule Resources
     *
     *  |      Used to retrieve all data from the resources of an EdgeModule.
     *
     */
    @GET
    @Path("/edgemodules/{mname}/resources")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get EdgeModule Resources", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = EdgeModuleResourceObject.class, responseContainer = "List"),
        @ApiResponse(code = 404, message = "Not Found") })
    public List<EdgeModuleResourceObject> getModuleResources(@PathParam("mname") String mname, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Get Module
     *
     *  |      Used to retrieve all data from &#x60;EdgeModule&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
     *
     */
    @GET
    @Path("/edgemodules")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get Module", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = EdgeModuleObject.class, responseContainer = "List") })
    public List<EdgeModuleObject> getModules(@HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Get Fields
     *
     *  |      Used to retrieve all the &#x60;field names&#x60; of the EMS EdgeModule (including the custom fields).
     *
     */
    @GET
    @Path("/edgemodules/fields")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get Fields", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = FieldsEdgeModuleObject.class) })
    public FieldsEdgeModuleObject getModulesFields(@HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Get EdgeModules Resources
     *
     *  |      Used to retrieve all data from the resources of all EdgeModules.
     *
     */
    @GET
    @Path("/edgemodules/resources")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get EdgeModules Resources", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = EdgeModuleResourceObject.class, responseContainer = "List") })
    public List<EdgeModuleResourceObject> getResources(@HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Get Resource Fields
     *
     *  |      Used to retrieve the &#x60;field names&#x60; of all the resources of the EMS EdgeModule (including the custom fields).
     *
     */
    @GET
    @Path("/edgemodules/resources/fields")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get Resource Fields", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = FieldsEdgeModuleObject.class) })
    public FieldsEdgeModuleObject getResourcesFields(@HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Add Module
     *
     *  |      Used to add a new &#x60;EdgeModule&#x60; object to the EMS database.
     *
     */
    @POST
    @Path("/edgemodules")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Add Module", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 201, message = "OK", response = EdgeModuleAddedObject.class),
        @ApiResponse(code = 404, message = "Unexpexted Request Body"),
        @ApiResponse(code = 409, message = "Module already exist") })
    public EdgeModuleAddedObject registerModule(EdgeModuleAddObject body, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Add Module Resource
     *
     *  |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.
     *
     */
    @POST
    @Path("/edgemodules/{mname}/resources")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Add Module Resource", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = EdgeModuleResourceAddedObject.class),
        @ApiResponse(code = 404, message = "Not Found") })
    public EdgeModuleResourceAddedObject registerModuleResource(@PathParam("mname") String mname, EdgeModuleResourceAddObject body, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Delete Module
     *
     *  |      Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
     *
     */
    @DELETE
    @Path("/edgemodules/{mname}")
    @Produces({ "application/json" })
    @ApiOperation(value = "Delete Module", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 204, message = "No Content"),
        @ApiResponse(code = 404, message = "Not Found") })
    public void unregisterModule(@PathParam("mname") String mname, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Delete Module Resource
     *
     *  |      Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
     *
     */
    @DELETE
    @Path("/edgemodules/{mname}/resources/{name}")
    @Produces({ "application/json" })
    @ApiOperation(value = "Delete Module Resource", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 204, message = "No Content"),
        @ApiResponse(code = 404, message = "Not Found") })
    public void unregisterModuleResource(@PathParam("mname") String mname, @PathParam("name") String name, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Update Module
     *
     *  |      Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
     *
     */
    @PUT
    @Path("/edgemodules/{mname}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Update Module", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = EdgeModuleUpdatedObject.class),
        @ApiResponse(code = 404, message = "Not Found") })
    public EdgeModuleUpdatedObject updateModule(@PathParam("mname") String mname, EdgeModuleUpdateObject body, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Update Module Resource
     *
     *  |      Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
     *
     */
    @PUT
    @Path("/edgemodules/{mname}/resources/{name}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Update Module Resource", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK", response = EdgeModuleResourceUpdatedObject.class),
        @ApiResponse(code = 404, message = "Not Found") })
    public EdgeModuleResourceUpdatedObject updateModuleResource(@PathParam("mname") String mname, @PathParam("name") String name, EdgeModuleResourceUpdateObject body, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);
}

