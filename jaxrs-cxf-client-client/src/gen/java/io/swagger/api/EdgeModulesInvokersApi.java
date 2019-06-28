package io.swagger.api;


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
public interface EdgeModulesInvokersApi  {

    /**
     * Invoke Resource Delete Method
     *
     * Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
     *
     */
    @DELETE
    @Path("/edgemodules/{mname}/{rname}")
    @ApiOperation(value = "Invoke Resource Delete Method", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK") })
    public void deleteResourceEndpoint(@PathParam("mname") String mname, @PathParam("rname") String rname, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Invoke Resource/_* Delete Method
     *
     * Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
     *
     */
    @DELETE
    @Path("/edgemodules/{mname}/{rname}/{wildcard}")
    @ApiOperation(value = "Invoke Resource/_* Delete Method", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK") })
    public void deleteResourceEndpointItem(@PathParam("mname") String mname, @PathParam("rname") String rname, @PathParam("wildcard") String wildcard, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Invoke Resource Get Method
     *
     * Used to invoke the GET method of the resource from an existing EMS EdgeModule.
     *
     */
    @GET
    @Path("/edgemodules/{mname}/{rname}")
    @Produces({ "application/json" })
    @ApiOperation(value = "Invoke Resource Get Method", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK") })
    public void getResourceEndpoint(@PathParam("mname") String mname, @PathParam("rname") String rname, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Invoke Resource/_* Get Method
     *
     * Used to invoke the GET method of the resource from an existing EMS EdgeModule.
     *
     */
    @GET
    @Path("/edgemodules/{mname}/{rname}/{wildcard}")
    @ApiOperation(value = "Invoke Resource/_* Get Method", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK") })
    public void getResourceEndpointItem(@PathParam("mname") String mname, @PathParam("rname") String rname, @PathParam("wildcard") String wildcard, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Invoke Resource Patch Method
     *
     * Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
     *
     */
    @PATCH
    @Path("/edgemodules/{mname}/{rname}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Invoke Resource Patch Method", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK") })
    public void patchResourceEndpoint(@PathParam("mname") String mname, @PathParam("rname") String rname, Object body, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Invoke Resource/_* Patch Method
     *
     * Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
     *
     */
    @PATCH
    @Path("/edgemodules/{mname}/{rname}/{wildcard}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Invoke Resource/_* Patch Method", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK") })
    public void patchResourceEndpointItem(@PathParam("mname") String mname, @PathParam("rname") String rname, @PathParam("wildcard") String wildcard, Object body, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Invoke Resource Post Method
     *
     * Used to invoke the POST method of the resource from an existing EMS EdgeModule.
     *
     */
    @POST
    @Path("/edgemodules/{mname}/{rname}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Invoke Resource Post Method", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK") })
    public void postResourceEndpoint(@PathParam("mname") String mname, @PathParam("rname") String rname, Object body, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Invoke Resource/_* Post Method
     *
     * Used to invoke the POST method of the resource from an existing EMS EdgeModule.
     *
     */
    @POST
    @Path("/edgemodules/{mname}/{rname}/{wildcard}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Invoke Resource/_* Post Method", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK") })
    public void postResourceEndpointItem(@PathParam("mname") String mname, @PathParam("rname") String rname, @PathParam("wildcard") String wildcard, Object body, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Invoke Resource Put Method
     *
     * Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
     *
     */
    @PUT
    @Path("/edgemodules/{mname}/{rname}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Invoke Resource Put Method", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK") })
    public void putResourceEndpoint(@PathParam("mname") String mname, @PathParam("rname") String rname, Object body, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Invoke Resource/_* Put Method
     *
     * Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
     *
     */
    @PUT
    @Path("/edgemodules/{mname}/{rname}/{wildcard}")
    @Consumes({ "application/json" })
    @Produces({ "application/json" })
    @ApiOperation(value = "Invoke Resource/_* Put Method", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK") })
    public void putResourceEndpointItem(@PathParam("mname") String mname, @PathParam("rname") String rname, @PathParam("wildcard") String wildcard, Object body, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);
}

