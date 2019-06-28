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
public interface ApiDocApi  {

    /**
     * Get API EndPoints
     *
     *  |      Used to retrieve all the API EndPoints.
     *
     */
    @GET
    @Path("/api")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get API EndPoints", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK") })
    public void aPI(@HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Get JSON
     *
     * Get API in JSON format
     *
     */
    @GET
    @Path("/api/apidoc.json")
    @ApiOperation(value = "Get JSON", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK") })
    public void getAPIJSONFormat(@HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Get YAML
     *
     * Get API in YAML format
     *
     */
    @GET
    @Path("/api/apidoc.yaml")
    @ApiOperation(value = "Get YAML", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK") })
    public void getAPIYAMLFormat(@HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);

    /**
     * Get API EndPoint
     *
     *  |      Used to retrieve an EndPoint for the API EndPoints.
     *
     */
    @GET
    @Path("/api/{item}/apidoc.yaml")
    @Produces({ "application/json" })
    @ApiOperation(value = "Get API EndPoint", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "OK") })
    public void getAPIYAMLFormatEndPoint(@PathParam("item") String item, @HeaderParam("X-Embarcadero-Application-Id") String xEmbarcaderoApplicationId, @HeaderParam("X-Embarcadero-App-Secret") String xEmbarcaderoAppSecret, @HeaderParam("X-Embarcadero-Master-Secret") String xEmbarcaderoMasterSecret);
}

