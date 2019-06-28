using System;
using System.Collections.Generic;
using RestSharp;
using IO.Swagger.Client;

namespace IO.Swagger.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IEdgeModulesInvokersApi
    {
        /// <summary>
        /// Invoke Resource Delete Method Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
        /// </summary>
        /// <param name="mname">Is the EMS EdgeModule name</param>
        /// <param name="rname">Is the unique EMS EdgeModule Resource name</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns></returns>
        void DeleteResourceEndpoint (string mname, string rname, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Invoke Resource/_* Delete Method Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
        /// </summary>
        /// <param name="mname">Is the EMS EdgeModule name</param>
        /// <param name="rname">Is the unique EMS EdgeModule Resource name</param>
        /// <param name="wildcard">Is the Wild card part of the URL</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns></returns>
        void DeleteResourceEndpointItem (string mname, string rname, string wildcard, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Invoke Resource Get Method Used to invoke the GET method of the resource from an existing EMS EdgeModule.
        /// </summary>
        /// <param name="mname">Is the EMS EdgeModule name</param>
        /// <param name="rname">Is the unique EMS EdgeModule Resource name</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns></returns>
        void GetResourceEndpoint (string mname, string rname, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Invoke Resource/_* Get Method Used to invoke the GET method of the resource from an existing EMS EdgeModule.
        /// </summary>
        /// <param name="mname">Is the EMS EdgeModule name</param>
        /// <param name="rname">Is the unique EMS EdgeModule Resource name</param>
        /// <param name="wildcard">Is the Wild card part of the URL</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns></returns>
        void GetResourceEndpointItem (string mname, string rname, string wildcard, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Invoke Resource Patch Method Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
        /// </summary>
        /// <param name="mname">Is the EMS EdgeModule name</param>
        /// <param name="rname">Is the unique EMS EdgeModule Resource name</param>
        /// <param name="body">Body Object</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns></returns>
        void PatchResourceEndpoint (string mname, string rname, Object body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Invoke Resource/_* Patch Method Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
        /// </summary>
        /// <param name="mname">Is the EMS EdgeModule name</param>
        /// <param name="rname">Is the unique EMS EdgeModule Resource name</param>
        /// <param name="wildcard">Is the Wild card part of the URL</param>
        /// <param name="body">Body Object</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns></returns>
        void PatchResourceEndpointItem (string mname, string rname, string wildcard, Object body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Invoke Resource Post Method Used to invoke the POST method of the resource from an existing EMS EdgeModule.
        /// </summary>
        /// <param name="mname">Is the EMS EdgeModule name</param>
        /// <param name="rname">Is the unique EMS EdgeModule Resource name</param>
        /// <param name="body">Body Object</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns></returns>
        void PostResourceEndpoint (string mname, string rname, Object body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Invoke Resource/_* Post Method Used to invoke the POST method of the resource from an existing EMS EdgeModule.
        /// </summary>
        /// <param name="mname">Is the EMS EdgeModule name</param>
        /// <param name="rname">Is the unique EMS EdgeModule Resource name</param>
        /// <param name="wildcard">Is the Wild card part of the URL</param>
        /// <param name="body">Body Object</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns></returns>
        void PostResourceEndpointItem (string mname, string rname, string wildcard, Object body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Invoke Resource Put Method Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
        /// </summary>
        /// <param name="mname">Is the EMS EdgeModule name</param>
        /// <param name="rname">Is the unique EMS EdgeModule Resource name</param>
        /// <param name="body">Body Object</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns></returns>
        void PutResourceEndpoint (string mname, string rname, Object body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Invoke Resource/_* Put Method Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
        /// </summary>
        /// <param name="mname">Is the EMS EdgeModule name</param>
        /// <param name="rname">Is the unique EMS EdgeModule Resource name</param>
        /// <param name="wildcard">Is the Wild card part of the URL</param>
        /// <param name="body">Body Object</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns></returns>
        void PutResourceEndpointItem (string mname, string rname, string wildcard, Object body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class EdgeModulesInvokersApi : IEdgeModulesInvokersApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="EdgeModulesInvokersApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public EdgeModulesInvokersApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="EdgeModulesInvokersApi"/> class.
        /// </summary>
        /// <returns></returns>
        public EdgeModulesInvokersApi(String basePath)
        {
            this.ApiClient = new ApiClient(basePath);
        }
    
        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public void SetBasePath(String basePath)
        {
            this.ApiClient.BasePath = basePath;
        }
    
        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public String GetBasePath(String basePath)
        {
            return this.ApiClient.BasePath;
        }
    
        /// <summary>
        /// Gets or sets the API client.
        /// </summary>
        /// <value>An instance of the ApiClient</value>
        public ApiClient ApiClient {get; set;}
    
        /// <summary>
        /// Invoke Resource Delete Method Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
        /// </summary>
        /// <param name="mname">Is the EMS EdgeModule name</param> 
        /// <param name="rname">Is the unique EMS EdgeModule Resource name</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns></returns>            
        public void DeleteResourceEndpoint (string mname, string rname, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'mname' is set
            if (mname == null) throw new ApiException(400, "Missing required parameter 'mname' when calling DeleteResourceEndpoint");
            
            // verify the required parameter 'rname' is set
            if (rname == null) throw new ApiException(400, "Missing required parameter 'rname' when calling DeleteResourceEndpoint");
            
    
            var path = "/edgemodules/{mname}/{rname}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "mname" + "}", ApiClient.ParameterToString(mname));
path = path.Replace("{" + "rname" + "}", ApiClient.ParameterToString(rname));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (xEmbarcaderoApplicationId != null) headerParams.Add("X-Embarcadero-Application-Id", ApiClient.ParameterToString(xEmbarcaderoApplicationId)); // header parameter
 if (xEmbarcaderoAppSecret != null) headerParams.Add("X-Embarcadero-App-Secret", ApiClient.ParameterToString(xEmbarcaderoAppSecret)); // header parameter
 if (xEmbarcaderoMasterSecret != null) headerParams.Add("X-Embarcadero-Master-Secret", ApiClient.ParameterToString(xEmbarcaderoMasterSecret)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.DELETE, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteResourceEndpoint: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteResourceEndpoint: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Invoke Resource/_* Delete Method Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
        /// </summary>
        /// <param name="mname">Is the EMS EdgeModule name</param> 
        /// <param name="rname">Is the unique EMS EdgeModule Resource name</param> 
        /// <param name="wildcard">Is the Wild card part of the URL</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns></returns>            
        public void DeleteResourceEndpointItem (string mname, string rname, string wildcard, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'mname' is set
            if (mname == null) throw new ApiException(400, "Missing required parameter 'mname' when calling DeleteResourceEndpointItem");
            
            // verify the required parameter 'rname' is set
            if (rname == null) throw new ApiException(400, "Missing required parameter 'rname' when calling DeleteResourceEndpointItem");
            
            // verify the required parameter 'wildcard' is set
            if (wildcard == null) throw new ApiException(400, "Missing required parameter 'wildcard' when calling DeleteResourceEndpointItem");
            
    
            var path = "/edgemodules/{mname}/{rname}/{wildcard}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "mname" + "}", ApiClient.ParameterToString(mname));
path = path.Replace("{" + "rname" + "}", ApiClient.ParameterToString(rname));
path = path.Replace("{" + "wildcard" + "}", ApiClient.ParameterToString(wildcard));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (xEmbarcaderoApplicationId != null) headerParams.Add("X-Embarcadero-Application-Id", ApiClient.ParameterToString(xEmbarcaderoApplicationId)); // header parameter
 if (xEmbarcaderoAppSecret != null) headerParams.Add("X-Embarcadero-App-Secret", ApiClient.ParameterToString(xEmbarcaderoAppSecret)); // header parameter
 if (xEmbarcaderoMasterSecret != null) headerParams.Add("X-Embarcadero-Master-Secret", ApiClient.ParameterToString(xEmbarcaderoMasterSecret)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.DELETE, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteResourceEndpointItem: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteResourceEndpointItem: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Invoke Resource Get Method Used to invoke the GET method of the resource from an existing EMS EdgeModule.
        /// </summary>
        /// <param name="mname">Is the EMS EdgeModule name</param> 
        /// <param name="rname">Is the unique EMS EdgeModule Resource name</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns></returns>            
        public void GetResourceEndpoint (string mname, string rname, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'mname' is set
            if (mname == null) throw new ApiException(400, "Missing required parameter 'mname' when calling GetResourceEndpoint");
            
            // verify the required parameter 'rname' is set
            if (rname == null) throw new ApiException(400, "Missing required parameter 'rname' when calling GetResourceEndpoint");
            
    
            var path = "/edgemodules/{mname}/{rname}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "mname" + "}", ApiClient.ParameterToString(mname));
path = path.Replace("{" + "rname" + "}", ApiClient.ParameterToString(rname));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (xEmbarcaderoApplicationId != null) headerParams.Add("X-Embarcadero-Application-Id", ApiClient.ParameterToString(xEmbarcaderoApplicationId)); // header parameter
 if (xEmbarcaderoAppSecret != null) headerParams.Add("X-Embarcadero-App-Secret", ApiClient.ParameterToString(xEmbarcaderoAppSecret)); // header parameter
 if (xEmbarcaderoMasterSecret != null) headerParams.Add("X-Embarcadero-Master-Secret", ApiClient.ParameterToString(xEmbarcaderoMasterSecret)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetResourceEndpoint: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetResourceEndpoint: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Invoke Resource/_* Get Method Used to invoke the GET method of the resource from an existing EMS EdgeModule.
        /// </summary>
        /// <param name="mname">Is the EMS EdgeModule name</param> 
        /// <param name="rname">Is the unique EMS EdgeModule Resource name</param> 
        /// <param name="wildcard">Is the Wild card part of the URL</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns></returns>            
        public void GetResourceEndpointItem (string mname, string rname, string wildcard, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'mname' is set
            if (mname == null) throw new ApiException(400, "Missing required parameter 'mname' when calling GetResourceEndpointItem");
            
            // verify the required parameter 'rname' is set
            if (rname == null) throw new ApiException(400, "Missing required parameter 'rname' when calling GetResourceEndpointItem");
            
            // verify the required parameter 'wildcard' is set
            if (wildcard == null) throw new ApiException(400, "Missing required parameter 'wildcard' when calling GetResourceEndpointItem");
            
    
            var path = "/edgemodules/{mname}/{rname}/{wildcard}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "mname" + "}", ApiClient.ParameterToString(mname));
path = path.Replace("{" + "rname" + "}", ApiClient.ParameterToString(rname));
path = path.Replace("{" + "wildcard" + "}", ApiClient.ParameterToString(wildcard));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (xEmbarcaderoApplicationId != null) headerParams.Add("X-Embarcadero-Application-Id", ApiClient.ParameterToString(xEmbarcaderoApplicationId)); // header parameter
 if (xEmbarcaderoAppSecret != null) headerParams.Add("X-Embarcadero-App-Secret", ApiClient.ParameterToString(xEmbarcaderoAppSecret)); // header parameter
 if (xEmbarcaderoMasterSecret != null) headerParams.Add("X-Embarcadero-Master-Secret", ApiClient.ParameterToString(xEmbarcaderoMasterSecret)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetResourceEndpointItem: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetResourceEndpointItem: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Invoke Resource Patch Method Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
        /// </summary>
        /// <param name="mname">Is the EMS EdgeModule name</param> 
        /// <param name="rname">Is the unique EMS EdgeModule Resource name</param> 
        /// <param name="body">Body Object</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns></returns>            
        public void PatchResourceEndpoint (string mname, string rname, Object body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'mname' is set
            if (mname == null) throw new ApiException(400, "Missing required parameter 'mname' when calling PatchResourceEndpoint");
            
            // verify the required parameter 'rname' is set
            if (rname == null) throw new ApiException(400, "Missing required parameter 'rname' when calling PatchResourceEndpoint");
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling PatchResourceEndpoint");
            
    
            var path = "/edgemodules/{mname}/{rname}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "mname" + "}", ApiClient.ParameterToString(mname));
path = path.Replace("{" + "rname" + "}", ApiClient.ParameterToString(rname));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (xEmbarcaderoApplicationId != null) headerParams.Add("X-Embarcadero-Application-Id", ApiClient.ParameterToString(xEmbarcaderoApplicationId)); // header parameter
 if (xEmbarcaderoAppSecret != null) headerParams.Add("X-Embarcadero-App-Secret", ApiClient.ParameterToString(xEmbarcaderoAppSecret)); // header parameter
 if (xEmbarcaderoMasterSecret != null) headerParams.Add("X-Embarcadero-Master-Secret", ApiClient.ParameterToString(xEmbarcaderoMasterSecret)); // header parameter
                        postBody = ApiClient.Serialize(body); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.PATCH, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PatchResourceEndpoint: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PatchResourceEndpoint: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Invoke Resource/_* Patch Method Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
        /// </summary>
        /// <param name="mname">Is the EMS EdgeModule name</param> 
        /// <param name="rname">Is the unique EMS EdgeModule Resource name</param> 
        /// <param name="wildcard">Is the Wild card part of the URL</param> 
        /// <param name="body">Body Object</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns></returns>            
        public void PatchResourceEndpointItem (string mname, string rname, string wildcard, Object body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'mname' is set
            if (mname == null) throw new ApiException(400, "Missing required parameter 'mname' when calling PatchResourceEndpointItem");
            
            // verify the required parameter 'rname' is set
            if (rname == null) throw new ApiException(400, "Missing required parameter 'rname' when calling PatchResourceEndpointItem");
            
            // verify the required parameter 'wildcard' is set
            if (wildcard == null) throw new ApiException(400, "Missing required parameter 'wildcard' when calling PatchResourceEndpointItem");
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling PatchResourceEndpointItem");
            
    
            var path = "/edgemodules/{mname}/{rname}/{wildcard}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "mname" + "}", ApiClient.ParameterToString(mname));
path = path.Replace("{" + "rname" + "}", ApiClient.ParameterToString(rname));
path = path.Replace("{" + "wildcard" + "}", ApiClient.ParameterToString(wildcard));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (xEmbarcaderoApplicationId != null) headerParams.Add("X-Embarcadero-Application-Id", ApiClient.ParameterToString(xEmbarcaderoApplicationId)); // header parameter
 if (xEmbarcaderoAppSecret != null) headerParams.Add("X-Embarcadero-App-Secret", ApiClient.ParameterToString(xEmbarcaderoAppSecret)); // header parameter
 if (xEmbarcaderoMasterSecret != null) headerParams.Add("X-Embarcadero-Master-Secret", ApiClient.ParameterToString(xEmbarcaderoMasterSecret)); // header parameter
                        postBody = ApiClient.Serialize(body); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.PATCH, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PatchResourceEndpointItem: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PatchResourceEndpointItem: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Invoke Resource Post Method Used to invoke the POST method of the resource from an existing EMS EdgeModule.
        /// </summary>
        /// <param name="mname">Is the EMS EdgeModule name</param> 
        /// <param name="rname">Is the unique EMS EdgeModule Resource name</param> 
        /// <param name="body">Body Object</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns></returns>            
        public void PostResourceEndpoint (string mname, string rname, Object body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'mname' is set
            if (mname == null) throw new ApiException(400, "Missing required parameter 'mname' when calling PostResourceEndpoint");
            
            // verify the required parameter 'rname' is set
            if (rname == null) throw new ApiException(400, "Missing required parameter 'rname' when calling PostResourceEndpoint");
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling PostResourceEndpoint");
            
    
            var path = "/edgemodules/{mname}/{rname}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "mname" + "}", ApiClient.ParameterToString(mname));
path = path.Replace("{" + "rname" + "}", ApiClient.ParameterToString(rname));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (xEmbarcaderoApplicationId != null) headerParams.Add("X-Embarcadero-Application-Id", ApiClient.ParameterToString(xEmbarcaderoApplicationId)); // header parameter
 if (xEmbarcaderoAppSecret != null) headerParams.Add("X-Embarcadero-App-Secret", ApiClient.ParameterToString(xEmbarcaderoAppSecret)); // header parameter
 if (xEmbarcaderoMasterSecret != null) headerParams.Add("X-Embarcadero-Master-Secret", ApiClient.ParameterToString(xEmbarcaderoMasterSecret)); // header parameter
                        postBody = ApiClient.Serialize(body); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostResourceEndpoint: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostResourceEndpoint: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Invoke Resource/_* Post Method Used to invoke the POST method of the resource from an existing EMS EdgeModule.
        /// </summary>
        /// <param name="mname">Is the EMS EdgeModule name</param> 
        /// <param name="rname">Is the unique EMS EdgeModule Resource name</param> 
        /// <param name="wildcard">Is the Wild card part of the URL</param> 
        /// <param name="body">Body Object</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns></returns>            
        public void PostResourceEndpointItem (string mname, string rname, string wildcard, Object body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'mname' is set
            if (mname == null) throw new ApiException(400, "Missing required parameter 'mname' when calling PostResourceEndpointItem");
            
            // verify the required parameter 'rname' is set
            if (rname == null) throw new ApiException(400, "Missing required parameter 'rname' when calling PostResourceEndpointItem");
            
            // verify the required parameter 'wildcard' is set
            if (wildcard == null) throw new ApiException(400, "Missing required parameter 'wildcard' when calling PostResourceEndpointItem");
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling PostResourceEndpointItem");
            
    
            var path = "/edgemodules/{mname}/{rname}/{wildcard}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "mname" + "}", ApiClient.ParameterToString(mname));
path = path.Replace("{" + "rname" + "}", ApiClient.ParameterToString(rname));
path = path.Replace("{" + "wildcard" + "}", ApiClient.ParameterToString(wildcard));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (xEmbarcaderoApplicationId != null) headerParams.Add("X-Embarcadero-Application-Id", ApiClient.ParameterToString(xEmbarcaderoApplicationId)); // header parameter
 if (xEmbarcaderoAppSecret != null) headerParams.Add("X-Embarcadero-App-Secret", ApiClient.ParameterToString(xEmbarcaderoAppSecret)); // header parameter
 if (xEmbarcaderoMasterSecret != null) headerParams.Add("X-Embarcadero-Master-Secret", ApiClient.ParameterToString(xEmbarcaderoMasterSecret)); // header parameter
                        postBody = ApiClient.Serialize(body); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostResourceEndpointItem: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostResourceEndpointItem: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Invoke Resource Put Method Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
        /// </summary>
        /// <param name="mname">Is the EMS EdgeModule name</param> 
        /// <param name="rname">Is the unique EMS EdgeModule Resource name</param> 
        /// <param name="body">Body Object</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns></returns>            
        public void PutResourceEndpoint (string mname, string rname, Object body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'mname' is set
            if (mname == null) throw new ApiException(400, "Missing required parameter 'mname' when calling PutResourceEndpoint");
            
            // verify the required parameter 'rname' is set
            if (rname == null) throw new ApiException(400, "Missing required parameter 'rname' when calling PutResourceEndpoint");
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling PutResourceEndpoint");
            
    
            var path = "/edgemodules/{mname}/{rname}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "mname" + "}", ApiClient.ParameterToString(mname));
path = path.Replace("{" + "rname" + "}", ApiClient.ParameterToString(rname));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (xEmbarcaderoApplicationId != null) headerParams.Add("X-Embarcadero-Application-Id", ApiClient.ParameterToString(xEmbarcaderoApplicationId)); // header parameter
 if (xEmbarcaderoAppSecret != null) headerParams.Add("X-Embarcadero-App-Secret", ApiClient.ParameterToString(xEmbarcaderoAppSecret)); // header parameter
 if (xEmbarcaderoMasterSecret != null) headerParams.Add("X-Embarcadero-Master-Secret", ApiClient.ParameterToString(xEmbarcaderoMasterSecret)); // header parameter
                        postBody = ApiClient.Serialize(body); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.PUT, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PutResourceEndpoint: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PutResourceEndpoint: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Invoke Resource/_* Put Method Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
        /// </summary>
        /// <param name="mname">Is the EMS EdgeModule name</param> 
        /// <param name="rname">Is the unique EMS EdgeModule Resource name</param> 
        /// <param name="wildcard">Is the Wild card part of the URL</param> 
        /// <param name="body">Body Object</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns></returns>            
        public void PutResourceEndpointItem (string mname, string rname, string wildcard, Object body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'mname' is set
            if (mname == null) throw new ApiException(400, "Missing required parameter 'mname' when calling PutResourceEndpointItem");
            
            // verify the required parameter 'rname' is set
            if (rname == null) throw new ApiException(400, "Missing required parameter 'rname' when calling PutResourceEndpointItem");
            
            // verify the required parameter 'wildcard' is set
            if (wildcard == null) throw new ApiException(400, "Missing required parameter 'wildcard' when calling PutResourceEndpointItem");
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling PutResourceEndpointItem");
            
    
            var path = "/edgemodules/{mname}/{rname}/{wildcard}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "mname" + "}", ApiClient.ParameterToString(mname));
path = path.Replace("{" + "rname" + "}", ApiClient.ParameterToString(rname));
path = path.Replace("{" + "wildcard" + "}", ApiClient.ParameterToString(wildcard));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                         if (xEmbarcaderoApplicationId != null) headerParams.Add("X-Embarcadero-Application-Id", ApiClient.ParameterToString(xEmbarcaderoApplicationId)); // header parameter
 if (xEmbarcaderoAppSecret != null) headerParams.Add("X-Embarcadero-App-Secret", ApiClient.ParameterToString(xEmbarcaderoAppSecret)); // header parameter
 if (xEmbarcaderoMasterSecret != null) headerParams.Add("X-Embarcadero-Master-Secret", ApiClient.ParameterToString(xEmbarcaderoMasterSecret)); // header parameter
                        postBody = ApiClient.Serialize(body); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.PUT, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PutResourceEndpointItem: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PutResourceEndpointItem: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
    }
}
