using System;
using System.Collections.Generic;
using RestSharp;
using IO.Swagger.Client;

namespace IO.Swagger.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IApiDocApi
    {
        /// <summary>
        /// Get API EndPoints  |      Used to retrieve all the API EndPoints.
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns></returns>
        void API (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Get JSON Get API in JSON format
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns></returns>
        void GetAPIJSONFormat (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Get YAML Get API in YAML format
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns></returns>
        void GetAPIYAMLFormat (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Get API EndPoint  |      Used to retrieve an EndPoint for the API EndPoints.
        /// </summary>
        /// <param name="item">Path Segment to an EndPoint</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns></returns>
        void GetAPIYAMLFormatEndPoint (string item, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class ApiDocApi : IApiDocApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ApiDocApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public ApiDocApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="ApiDocApi"/> class.
        /// </summary>
        /// <returns></returns>
        public ApiDocApi(String basePath)
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
        /// Get API EndPoints  |      Used to retrieve all the API EndPoints.
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns></returns>            
        public void API (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
    
            var path = "/api";
            path = path.Replace("{format}", "json");
                
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
                throw new ApiException ((int)response.StatusCode, "Error calling API: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling API: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Get JSON Get API in JSON format
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns></returns>            
        public void GetAPIJSONFormat (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
    
            var path = "/api/apidoc.json";
            path = path.Replace("{format}", "json");
                
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetAPIJSONFormat: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAPIJSONFormat: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Get YAML Get API in YAML format
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns></returns>            
        public void GetAPIYAMLFormat (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
    
            var path = "/api/apidoc.yaml";
            path = path.Replace("{format}", "json");
                
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetAPIYAMLFormat: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAPIYAMLFormat: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Get API EndPoint  |      Used to retrieve an EndPoint for the API EndPoints.
        /// </summary>
        /// <param name="item">Path Segment to an EndPoint</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns></returns>            
        public void GetAPIYAMLFormatEndPoint (string item, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'item' is set
            if (item == null) throw new ApiException(400, "Missing required parameter 'item' when calling GetAPIYAMLFormatEndPoint");
            
    
            var path = "/api/{item}/apidoc.yaml";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "item" + "}", ApiClient.ParameterToString(item));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetAPIYAMLFormatEndPoint: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetAPIYAMLFormatEndPoint: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
    }
}
