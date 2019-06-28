/**
 * EMS API Documentation
 * Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 * OpenAPI spec version: 0.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


package io.swagger.api;

import org.junit.Test;
import org.junit.Before;
import static org.junit.Assert.*;

import javax.ws.rs.core.Response;
import org.apache.cxf.jaxrs.client.JAXRSClientFactory;
import org.apache.cxf.jaxrs.client.ClientConfiguration;
import org.apache.cxf.jaxrs.client.WebClient;


import com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;




/**
 * EMS API Documentation
 *
 * <p>Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps
 *
 * API tests for EdgeModulesInvokersApi 
 */
public class EdgeModulesInvokersApiTest {


    private EdgeModulesInvokersApi api;
    
    @Before
    public void setup() {
        JacksonJsonProvider provider = new JacksonJsonProvider();
        List providers = new ArrayList();
        providers.add(provider);
        
        api = JAXRSClientFactory.create("http://localhost:8080", EdgeModulesInvokersApi.class, providers);
        org.apache.cxf.jaxrs.client.Client client = WebClient.client(api);
        
        ClientConfiguration config = WebClient.getConfig(client); 
    }

    
    /**
     * Invoke Resource Delete Method
     *
     * Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void deleteResourceEndpointTest() {
        String mname = null;
        String rname = null;
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //api.deleteResourceEndpoint(mname, rname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        
        // TODO: test validations
        
        
    }
    
    /**
     * Invoke Resource/_* Delete Method
     *
     * Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void deleteResourceEndpointItemTest() {
        String mname = null;
        String rname = null;
        String wildcard = null;
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //api.deleteResourceEndpointItem(mname, rname, wildcard, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        
        // TODO: test validations
        
        
    }
    
    /**
     * Invoke Resource Get Method
     *
     * Used to invoke the GET method of the resource from an existing EMS EdgeModule.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getResourceEndpointTest() {
        String mname = null;
        String rname = null;
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //api.getResourceEndpoint(mname, rname, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        
        // TODO: test validations
        
        
    }
    
    /**
     * Invoke Resource/_* Get Method
     *
     * Used to invoke the GET method of the resource from an existing EMS EdgeModule.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getResourceEndpointItemTest() {
        String mname = null;
        String rname = null;
        String wildcard = null;
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //api.getResourceEndpointItem(mname, rname, wildcard, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        
        // TODO: test validations
        
        
    }
    
    /**
     * Invoke Resource Patch Method
     *
     * Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void patchResourceEndpointTest() {
        String mname = null;
        String rname = null;
        Object body = null;
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //api.patchResourceEndpoint(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        
        // TODO: test validations
        
        
    }
    
    /**
     * Invoke Resource/_* Patch Method
     *
     * Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void patchResourceEndpointItemTest() {
        String mname = null;
        String rname = null;
        String wildcard = null;
        Object body = null;
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //api.patchResourceEndpointItem(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        
        // TODO: test validations
        
        
    }
    
    /**
     * Invoke Resource Post Method
     *
     * Used to invoke the POST method of the resource from an existing EMS EdgeModule.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void postResourceEndpointTest() {
        String mname = null;
        String rname = null;
        Object body = null;
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //api.postResourceEndpoint(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        
        // TODO: test validations
        
        
    }
    
    /**
     * Invoke Resource/_* Post Method
     *
     * Used to invoke the POST method of the resource from an existing EMS EdgeModule.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void postResourceEndpointItemTest() {
        String mname = null;
        String rname = null;
        String wildcard = null;
        Object body = null;
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //api.postResourceEndpointItem(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        
        // TODO: test validations
        
        
    }
    
    /**
     * Invoke Resource Put Method
     *
     * Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void putResourceEndpointTest() {
        String mname = null;
        String rname = null;
        Object body = null;
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //api.putResourceEndpoint(mname, rname, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        
        // TODO: test validations
        
        
    }
    
    /**
     * Invoke Resource/_* Put Method
     *
     * Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void putResourceEndpointItemTest() {
        String mname = null;
        String rname = null;
        String wildcard = null;
        Object body = null;
        String xEmbarcaderoApplicationId = null;
        String xEmbarcaderoAppSecret = null;
        String xEmbarcaderoMasterSecret = null;
        //api.putResourceEndpointItem(mname, rname, wildcard, body, xEmbarcaderoApplicationId, xEmbarcaderoAppSecret, xEmbarcaderoMasterSecret);
        
        // TODO: test validations
        
        
    }
    
}