using System;
using System.Collections.Generic;
using RestSharp;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace IO.Swagger.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IEdgeModulesApi
    {
        /// <summary>
        /// Get Module  |      Used to retrieve all data from &#x60;EdgeModule&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
        /// </summary>
        /// <param name="mname">Is the unique EMS EdgeModule identifier</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>EdgeModuleObject</returns>
        EdgeModuleObject GetModule (string mname, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Get EdgeModule Resource  |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.
        /// </summary>
        /// <param name="mname">Is the unique EMS EdgeModule identifier</param>
        /// <param name="name">Is the unique EMS EdgeModule Resource name</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>EdgeModuleResourceObject</returns>
        EdgeModuleResourceObject GetModuleResource (string mname, string name, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Get EdgeModule Resources  |      Used to retrieve all data from the resources of an EdgeModule.
        /// </summary>
        /// <param name="mname">Is the unique EMS EdgeModule identifier</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>List&lt;EdgeModuleResourceObject&gt;</returns>
        List<EdgeModuleResourceObject> GetModuleResources (string mname, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Get Module  |      Used to retrieve all data from &#x60;EdgeModule&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>List&lt;EdgeModuleObject&gt;</returns>
        List<EdgeModuleObject> GetModules (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Get Fields  |      Used to retrieve all the &#x60;field names&#x60; of the EMS EdgeModule (including the custom fields).
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>FieldsEdgeModuleObject</returns>
        FieldsEdgeModuleObject GetModulesFields (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Get EdgeModules Resources  |      Used to retrieve all data from the resources of all EdgeModules.
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>List&lt;EdgeModuleResourceObject&gt;</returns>
        List<EdgeModuleResourceObject> GetResources (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Get Resource Fields  |      Used to retrieve the &#x60;field names&#x60; of all the resources of the EMS EdgeModule (including the custom fields).
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>FieldsEdgeModuleObject</returns>
        FieldsEdgeModuleObject GetResourcesFields (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Add Module  |      Used to add a new &#x60;EdgeModule&#x60; object to the EMS database.
        /// </summary>
        /// <param name="body">EdgeModule object to add. protocolprops example string {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;}</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>EdgeModuleAddedObject</returns>
        EdgeModuleAddedObject RegisterModule (EdgeModuleAddObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Add Module Resource  |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.
        /// </summary>
        /// <param name="mname">Is the unique EMS EdgeModule identifier</param>
        /// <param name="body">EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;}</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>EdgeModuleResourceAddedObject</returns>
        EdgeModuleResourceAddedObject RegisterModuleResource (string mname, EdgeModuleResourceAddObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Delete Module  |      Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
        /// </summary>
        /// <param name="mname">Is the unique EMS EdgeModule identifier</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns></returns>
        void UnregisterModule (string mname, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Delete Module Resource  |      Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
        /// </summary>
        /// <param name="mname">Is the unique EMS EdgeModule identifier</param>
        /// <param name="name">Is the unique EMS EdgeModule Resource name</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns></returns>
        void UnregisterModuleResource (string mname, string name, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Update Module  |      Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
        /// </summary>
        /// <param name="mname">Is the unique EMS EdgeModule identifier</param>
        /// <param name="body">EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;}</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>EdgeModuleUpdatedObject</returns>
        EdgeModuleUpdatedObject UpdateModule (string mname, EdgeModuleUpdateObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Update Module Resource  |      Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
        /// </summary>
        /// <param name="mname">Is the unique EMS EdgeModule identifier</param>
        /// <param name="name">Is the unique EMS EdgeModule Resource name</param>
        /// <param name="body">EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;}</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>EdgeModuleResourceUpdatedObject</returns>
        EdgeModuleResourceUpdatedObject UpdateModuleResource (string mname, string name, EdgeModuleResourceUpdateObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class EdgeModulesApi : IEdgeModulesApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="EdgeModulesApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public EdgeModulesApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="EdgeModulesApi"/> class.
        /// </summary>
        /// <returns></returns>
        public EdgeModulesApi(String basePath)
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
        /// Get Module  |      Used to retrieve all data from &#x60;EdgeModule&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
        /// </summary>
        /// <param name="mname">Is the unique EMS EdgeModule identifier</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>EdgeModuleObject</returns>            
        public EdgeModuleObject GetModule (string mname, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'mname' is set
            if (mname == null) throw new ApiException(400, "Missing required parameter 'mname' when calling GetModule");
            
    
            var path = "/edgemodules/{mname}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "mname" + "}", ApiClient.ParameterToString(mname));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetModule: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetModule: " + response.ErrorMessage, response.ErrorMessage);
    
            return (EdgeModuleObject) ApiClient.Deserialize(response.Content, typeof(EdgeModuleObject), response.Headers);
        }
    
        /// <summary>
        /// Get EdgeModule Resource  |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.
        /// </summary>
        /// <param name="mname">Is the unique EMS EdgeModule identifier</param> 
        /// <param name="name">Is the unique EMS EdgeModule Resource name</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>EdgeModuleResourceObject</returns>            
        public EdgeModuleResourceObject GetModuleResource (string mname, string name, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'mname' is set
            if (mname == null) throw new ApiException(400, "Missing required parameter 'mname' when calling GetModuleResource");
            
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling GetModuleResource");
            
    
            var path = "/edgemodules/{mname}/resources/{name}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "mname" + "}", ApiClient.ParameterToString(mname));
path = path.Replace("{" + "name" + "}", ApiClient.ParameterToString(name));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetModuleResource: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetModuleResource: " + response.ErrorMessage, response.ErrorMessage);
    
            return (EdgeModuleResourceObject) ApiClient.Deserialize(response.Content, typeof(EdgeModuleResourceObject), response.Headers);
        }
    
        /// <summary>
        /// Get EdgeModule Resources  |      Used to retrieve all data from the resources of an EdgeModule.
        /// </summary>
        /// <param name="mname">Is the unique EMS EdgeModule identifier</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>List&lt;EdgeModuleResourceObject&gt;</returns>            
        public List<EdgeModuleResourceObject> GetModuleResources (string mname, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'mname' is set
            if (mname == null) throw new ApiException(400, "Missing required parameter 'mname' when calling GetModuleResources");
            
    
            var path = "/edgemodules/{mname}/resources";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "mname" + "}", ApiClient.ParameterToString(mname));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetModuleResources: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetModuleResources: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<EdgeModuleResourceObject>) ApiClient.Deserialize(response.Content, typeof(List<EdgeModuleResourceObject>), response.Headers);
        }
    
        /// <summary>
        /// Get Module  |      Used to retrieve all data from &#x60;EdgeModule&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>List&lt;EdgeModuleObject&gt;</returns>            
        public List<EdgeModuleObject> GetModules (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
    
            var path = "/edgemodules";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetModules: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetModules: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<EdgeModuleObject>) ApiClient.Deserialize(response.Content, typeof(List<EdgeModuleObject>), response.Headers);
        }
    
        /// <summary>
        /// Get Fields  |      Used to retrieve all the &#x60;field names&#x60; of the EMS EdgeModule (including the custom fields).
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>FieldsEdgeModuleObject</returns>            
        public FieldsEdgeModuleObject GetModulesFields (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
    
            var path = "/edgemodules/fields";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetModulesFields: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetModulesFields: " + response.ErrorMessage, response.ErrorMessage);
    
            return (FieldsEdgeModuleObject) ApiClient.Deserialize(response.Content, typeof(FieldsEdgeModuleObject), response.Headers);
        }
    
        /// <summary>
        /// Get EdgeModules Resources  |      Used to retrieve all data from the resources of all EdgeModules.
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>List&lt;EdgeModuleResourceObject&gt;</returns>            
        public List<EdgeModuleResourceObject> GetResources (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
    
            var path = "/edgemodules/resources";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetResources: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetResources: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<EdgeModuleResourceObject>) ApiClient.Deserialize(response.Content, typeof(List<EdgeModuleResourceObject>), response.Headers);
        }
    
        /// <summary>
        /// Get Resource Fields  |      Used to retrieve the &#x60;field names&#x60; of all the resources of the EMS EdgeModule (including the custom fields).
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>FieldsEdgeModuleObject</returns>            
        public FieldsEdgeModuleObject GetResourcesFields (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
    
            var path = "/edgemodules/resources/fields";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetResourcesFields: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetResourcesFields: " + response.ErrorMessage, response.ErrorMessage);
    
            return (FieldsEdgeModuleObject) ApiClient.Deserialize(response.Content, typeof(FieldsEdgeModuleObject), response.Headers);
        }
    
        /// <summary>
        /// Add Module  |      Used to add a new &#x60;EdgeModule&#x60; object to the EMS database.
        /// </summary>
        /// <param name="body">EdgeModule object to add. protocolprops example string {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;}</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>EdgeModuleAddedObject</returns>            
        public EdgeModuleAddedObject RegisterModule (EdgeModuleAddObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling RegisterModule");
            
    
            var path = "/edgemodules";
            path = path.Replace("{format}", "json");
                
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
                throw new ApiException ((int)response.StatusCode, "Error calling RegisterModule: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling RegisterModule: " + response.ErrorMessage, response.ErrorMessage);
    
            return (EdgeModuleAddedObject) ApiClient.Deserialize(response.Content, typeof(EdgeModuleAddedObject), response.Headers);
        }
    
        /// <summary>
        /// Add Module Resource  |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.
        /// </summary>
        /// <param name="mname">Is the unique EMS EdgeModule identifier</param> 
        /// <param name="body">EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;}</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>EdgeModuleResourceAddedObject</returns>            
        public EdgeModuleResourceAddedObject RegisterModuleResource (string mname, EdgeModuleResourceAddObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'mname' is set
            if (mname == null) throw new ApiException(400, "Missing required parameter 'mname' when calling RegisterModuleResource");
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling RegisterModuleResource");
            
    
            var path = "/edgemodules/{mname}/resources";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "mname" + "}", ApiClient.ParameterToString(mname));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling RegisterModuleResource: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling RegisterModuleResource: " + response.ErrorMessage, response.ErrorMessage);
    
            return (EdgeModuleResourceAddedObject) ApiClient.Deserialize(response.Content, typeof(EdgeModuleResourceAddedObject), response.Headers);
        }
    
        /// <summary>
        /// Delete Module  |      Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
        /// </summary>
        /// <param name="mname">Is the unique EMS EdgeModule identifier</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns></returns>            
        public void UnregisterModule (string mname, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'mname' is set
            if (mname == null) throw new ApiException(400, "Missing required parameter 'mname' when calling UnregisterModule");
            
    
            var path = "/edgemodules/{mname}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "mname" + "}", ApiClient.ParameterToString(mname));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling UnregisterModule: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UnregisterModule: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Delete Module Resource  |      Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
        /// </summary>
        /// <param name="mname">Is the unique EMS EdgeModule identifier</param> 
        /// <param name="name">Is the unique EMS EdgeModule Resource name</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns></returns>            
        public void UnregisterModuleResource (string mname, string name, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'mname' is set
            if (mname == null) throw new ApiException(400, "Missing required parameter 'mname' when calling UnregisterModuleResource");
            
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling UnregisterModuleResource");
            
    
            var path = "/edgemodules/{mname}/resources/{name}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "mname" + "}", ApiClient.ParameterToString(mname));
path = path.Replace("{" + "name" + "}", ApiClient.ParameterToString(name));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling UnregisterModuleResource: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UnregisterModuleResource: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Update Module  |      Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
        /// </summary>
        /// <param name="mname">Is the unique EMS EdgeModule identifier</param> 
        /// <param name="body">EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;}</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>EdgeModuleUpdatedObject</returns>            
        public EdgeModuleUpdatedObject UpdateModule (string mname, EdgeModuleUpdateObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'mname' is set
            if (mname == null) throw new ApiException(400, "Missing required parameter 'mname' when calling UpdateModule");
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling UpdateModule");
            
    
            var path = "/edgemodules/{mname}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "mname" + "}", ApiClient.ParameterToString(mname));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateModule: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateModule: " + response.ErrorMessage, response.ErrorMessage);
    
            return (EdgeModuleUpdatedObject) ApiClient.Deserialize(response.Content, typeof(EdgeModuleUpdatedObject), response.Headers);
        }
    
        /// <summary>
        /// Update Module Resource  |      Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
        /// </summary>
        /// <param name="mname">Is the unique EMS EdgeModule identifier</param> 
        /// <param name="name">Is the unique EMS EdgeModule Resource name</param> 
        /// <param name="body">EdgModule Resource add object. protocolprops string example {\\\&quot;port\\\&quot;:8082,\\\&quot;host\\\&quot;:\\\&quot;10.150.40.52\\\&quot;}</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>EdgeModuleResourceUpdatedObject</returns>            
        public EdgeModuleResourceUpdatedObject UpdateModuleResource (string mname, string name, EdgeModuleResourceUpdateObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'mname' is set
            if (mname == null) throw new ApiException(400, "Missing required parameter 'mname' when calling UpdateModuleResource");
            
            // verify the required parameter 'name' is set
            if (name == null) throw new ApiException(400, "Missing required parameter 'name' when calling UpdateModuleResource");
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling UpdateModuleResource");
            
    
            var path = "/edgemodules/{mname}/resources/{name}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "mname" + "}", ApiClient.ParameterToString(mname));
path = path.Replace("{" + "name" + "}", ApiClient.ParameterToString(name));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateModuleResource: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateModuleResource: " + response.ErrorMessage, response.ErrorMessage);
    
            return (EdgeModuleResourceUpdatedObject) ApiClient.Deserialize(response.Content, typeof(EdgeModuleResourceUpdatedObject), response.Headers);
        }
    
    }
}
