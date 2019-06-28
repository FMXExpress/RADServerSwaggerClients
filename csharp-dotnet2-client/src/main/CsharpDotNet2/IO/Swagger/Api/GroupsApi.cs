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
    public interface IGroupsApi
    {
        /// <summary>
        /// Add Group  |      Used to add a new &#x60;Group&#x60; object to the EMS database.
        /// </summary>
        /// <param name="body">Object to sign up a new EMS User in the EMS Server</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns></returns>
        void AddGroup (GroupAddObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Delete Group  |      Used to delete a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
        /// </summary>
        /// <param name="item">A group name</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns></returns>
        void DeleteGroup (string item, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Get Group  |      Used to retrieve all data from a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
        /// </summary>
        /// <param name="item">A group name</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>GroupObject</returns>
        GroupObject GetGroup (string item, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Get Fields  |      Used to retrieve all the &#x60;field names&#x60; of the EMS Group (including the custom fields).
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>List&lt;FieldGroupObject&gt;</returns>
        List<FieldGroupObject> GetGroupFields (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Get Groups  |      Used to retrieve all data from &#x60;Groups&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <param name="skip">users skipped</param>
        /// <param name="limit">maximum number of results to return</param>
        /// <param name="order">order ascending or descending (asc, desc)</param>
        /// <param name="where">filter operators (lt, lte, gt, gte, eq, neq, like, nlike)</param>
        /// <returns>List&lt;GroupObject&gt;</returns>
        List<GroupObject> GetGroups (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret, decimal? skip, decimal? limit, decimal? order, string where);
        /// <summary>
        /// Update Group  |      Used to update a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
        /// </summary>
        /// <param name="item">A group name</param>
        /// <param name="body">Object to sign up a new EMS User in the EMS Server</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>UpdatedGroupObject</returns>
        UpdatedGroupObject UpdateGroup (string item, UpdateGroupObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class GroupsApi : IGroupsApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="GroupsApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public GroupsApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="GroupsApi"/> class.
        /// </summary>
        /// <returns></returns>
        public GroupsApi(String basePath)
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
        /// Add Group  |      Used to add a new &#x60;Group&#x60; object to the EMS database.
        /// </summary>
        /// <param name="body">Object to sign up a new EMS User in the EMS Server</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns></returns>            
        public void AddGroup (GroupAddObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling AddGroup");
            
    
            var path = "/groups";
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
                throw new ApiException ((int)response.StatusCode, "Error calling AddGroup: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AddGroup: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Delete Group  |      Used to delete a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
        /// </summary>
        /// <param name="item">A group name</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns></returns>            
        public void DeleteGroup (string item, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'item' is set
            if (item == null) throw new ApiException(400, "Missing required parameter 'item' when calling DeleteGroup");
            
    
            var path = "/groups/{item}";
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
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.DELETE, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteGroup: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteGroup: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Get Group  |      Used to retrieve all data from a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
        /// </summary>
        /// <param name="item">A group name</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>GroupObject</returns>            
        public GroupObject GetGroup (string item, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'item' is set
            if (item == null) throw new ApiException(400, "Missing required parameter 'item' when calling GetGroup");
            
    
            var path = "/groups/{item}";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetGroup: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetGroup: " + response.ErrorMessage, response.ErrorMessage);
    
            return (GroupObject) ApiClient.Deserialize(response.Content, typeof(GroupObject), response.Headers);
        }
    
        /// <summary>
        /// Get Fields  |      Used to retrieve all the &#x60;field names&#x60; of the EMS Group (including the custom fields).
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>List&lt;FieldGroupObject&gt;</returns>            
        public List<FieldGroupObject> GetGroupFields (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
    
            var path = "/groups/fields";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetGroupFields: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetGroupFields: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<FieldGroupObject>) ApiClient.Deserialize(response.Content, typeof(List<FieldGroupObject>), response.Headers);
        }
    
        /// <summary>
        /// Get Groups  |      Used to retrieve all data from &#x60;Groups&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <param name="skip">users skipped</param> 
        /// <param name="limit">maximum number of results to return</param> 
        /// <param name="order">order ascending or descending (asc, desc)</param> 
        /// <param name="where">filter operators (lt, lte, gt, gte, eq, neq, like, nlike)</param> 
        /// <returns>List&lt;GroupObject&gt;</returns>            
        public List<GroupObject> GetGroups (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret, decimal? skip, decimal? limit, decimal? order, string where)
        {
            
    
            var path = "/groups";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (skip != null) queryParams.Add("skip", ApiClient.ParameterToString(skip)); // query parameter
 if (limit != null) queryParams.Add("limit", ApiClient.ParameterToString(limit)); // query parameter
 if (order != null) queryParams.Add("order", ApiClient.ParameterToString(order)); // query parameter
 if (where != null) queryParams.Add("where", ApiClient.ParameterToString(where)); // query parameter
             if (xEmbarcaderoApplicationId != null) headerParams.Add("X-Embarcadero-Application-Id", ApiClient.ParameterToString(xEmbarcaderoApplicationId)); // header parameter
 if (xEmbarcaderoAppSecret != null) headerParams.Add("X-Embarcadero-App-Secret", ApiClient.ParameterToString(xEmbarcaderoAppSecret)); // header parameter
 if (xEmbarcaderoMasterSecret != null) headerParams.Add("X-Embarcadero-Master-Secret", ApiClient.ParameterToString(xEmbarcaderoMasterSecret)); // header parameter
                            
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetGroups: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetGroups: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<GroupObject>) ApiClient.Deserialize(response.Content, typeof(List<GroupObject>), response.Headers);
        }
    
        /// <summary>
        /// Update Group  |      Used to update a &#x60;Group&#x60;. **item** is the unique EMS Group name in the EMS database.
        /// </summary>
        /// <param name="item">A group name</param> 
        /// <param name="body">Object to sign up a new EMS User in the EMS Server</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>UpdatedGroupObject</returns>            
        public UpdatedGroupObject UpdateGroup (string item, UpdateGroupObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'item' is set
            if (item == null) throw new ApiException(400, "Missing required parameter 'item' when calling UpdateGroup");
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling UpdateGroup");
            
    
            var path = "/groups/{item}";
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
                        postBody = ApiClient.Serialize(body); // http body (model) parameter
    
            // authentication setting, if any
            String[] authSettings = new String[] {  };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.PUT, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateGroup: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateGroup: " + response.ErrorMessage, response.ErrorMessage);
    
            return (UpdatedGroupObject) ApiClient.Deserialize(response.Content, typeof(UpdatedGroupObject), response.Headers);
        }
    
    }
}
