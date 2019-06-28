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
    public interface IUsersApi
    {
        /// <summary>
        /// Add User  |      Used to add a new &#x60;User&#x60; object to the EMS database.
        /// </summary>
        /// <param name="body">Object to add a new EMS User in the EMS Server</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>UseridObject</returns>
        UseridObject AddUser (UserCredentialsObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Delete User  |      Used to delete a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
        /// </summary>
        /// <param name="id">A user ID</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns></returns>
        void DeleteUser (string id, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Get User  |      Used to retrieve all data from a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
        /// </summary>
        /// <param name="id">A user ID</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>UserObject</returns>
        UserObject GetUser (string id, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Get Fields  |      Used to retrieve all the &#x60;field names&#x60; of the EMS Users (including the custom fields).
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>List&lt;FieldObject&gt;</returns>
        List<FieldObject> GetUserFields (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Get User Groups  |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.
        /// </summary>
        /// <param name="id">A user ID</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>List&lt;GroupName&gt;</returns>
        List<GroupName> GetUserGroups (string id, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Get Users  |      Used to retrieve all data from &#x60;Users&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <param name="skip">users skipped</param>
        /// <param name="limit">maximum number of results to return</param>
        /// <param name="order">order ascending or descending (asc, desc)</param>
        /// <param name="where">filter operators (lt, lte, gt, gte, eq, neq, like, nlike)</param>
        /// <returns>List&lt;UserObject&gt;</returns>
        List<UserObject> GetUsers (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret, decimal? skip, decimal? limit, decimal? order, string where);
        /// <summary>
        /// Log In  |      Logs in to the EMS Server with a specific EMS User.
        /// </summary>
        /// <param name="body">A user object</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>UserTokenObject</returns>
        UserTokenObject LoginUser (UserCredentialsObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// sPostLogoutSummaryTitle sPostLogoutSummaryDesc
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns></returns>
        void LogoutUser (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Sign Up  User  |      Signs up to the EMS Server with an appropriate EMS User.
        /// </summary>
        /// <param name="body">Object to sign up a new EMS User in the EMS Server</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>UserSignUpResponseObject</returns>
        UserSignUpResponseObject SignupUser (UserCredentialsObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
        /// <summary>
        /// Update User  |      Used to update a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
        /// </summary>
        /// <param name="id">A user ID</param>
        /// <param name="body">Add any fieldName</param>
        /// <param name="xEmbarcaderoApplicationId"></param>
        /// <param name="xEmbarcaderoAppSecret"></param>
        /// <param name="xEmbarcaderoMasterSecret"></param>
        /// <returns>UpdatedObject</returns>
        UpdatedObject UpdateUser (string id, UpdateObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class UsersApi : IUsersApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="UsersApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public UsersApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="UsersApi"/> class.
        /// </summary>
        /// <returns></returns>
        public UsersApi(String basePath)
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
        /// Add User  |      Used to add a new &#x60;User&#x60; object to the EMS database.
        /// </summary>
        /// <param name="body">Object to add a new EMS User in the EMS Server</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>UseridObject</returns>            
        public UseridObject AddUser (UserCredentialsObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling AddUser");
            
    
            var path = "/users";
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
                throw new ApiException ((int)response.StatusCode, "Error calling AddUser: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AddUser: " + response.ErrorMessage, response.ErrorMessage);
    
            return (UseridObject) ApiClient.Deserialize(response.Content, typeof(UseridObject), response.Headers);
        }
    
        /// <summary>
        /// Delete User  |      Used to delete a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
        /// </summary>
        /// <param name="id">A user ID</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns></returns>            
        public void DeleteUser (string id, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling DeleteUser");
            
    
            var path = "/users/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteUser: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteUser: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Get User  |      Used to retrieve all data from a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
        /// </summary>
        /// <param name="id">A user ID</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>UserObject</returns>            
        public UserObject GetUser (string id, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetUser");
            
    
            var path = "/users/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetUser: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetUser: " + response.ErrorMessage, response.ErrorMessage);
    
            return (UserObject) ApiClient.Deserialize(response.Content, typeof(UserObject), response.Headers);
        }
    
        /// <summary>
        /// Get Fields  |      Used to retrieve all the &#x60;field names&#x60; of the EMS Users (including the custom fields).
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>List&lt;FieldObject&gt;</returns>            
        public List<FieldObject> GetUserFields (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
    
            var path = "/users/fields";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetUserFields: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetUserFields: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<FieldObject>) ApiClient.Deserialize(response.Content, typeof(List<FieldObject>), response.Headers);
        }
    
        /// <summary>
        /// Get User Groups  |      Used to retrieve the EMS Groups the EMS User belongs to. **id** is the unique EMS User identifier (UID) in the EMS database.
        /// </summary>
        /// <param name="id">A user ID</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>List&lt;GroupName&gt;</returns>            
        public List<GroupName> GetUserGroups (string id, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetUserGroups");
            
    
            var path = "/users/{id}/groups";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetUserGroups: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetUserGroups: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<GroupName>) ApiClient.Deserialize(response.Content, typeof(List<GroupName>), response.Headers);
        }
    
        /// <summary>
        /// Get Users  |      Used to retrieve all data from &#x60;Users&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <param name="skip">users skipped</param> 
        /// <param name="limit">maximum number of results to return</param> 
        /// <param name="order">order ascending or descending (asc, desc)</param> 
        /// <param name="where">filter operators (lt, lte, gt, gte, eq, neq, like, nlike)</param> 
        /// <returns>List&lt;UserObject&gt;</returns>            
        public List<UserObject> GetUsers (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret, decimal? skip, decimal? limit, decimal? order, string where)
        {
            
    
            var path = "/users";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetUsers: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetUsers: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<UserObject>) ApiClient.Deserialize(response.Content, typeof(List<UserObject>), response.Headers);
        }
    
        /// <summary>
        /// Log In  |      Logs in to the EMS Server with a specific EMS User.
        /// </summary>
        /// <param name="body">A user object</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>UserTokenObject</returns>            
        public UserTokenObject LoginUser (UserCredentialsObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling LoginUser");
            
    
            var path = "/users/login";
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
                throw new ApiException ((int)response.StatusCode, "Error calling LoginUser: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling LoginUser: " + response.ErrorMessage, response.ErrorMessage);
    
            return (UserTokenObject) ApiClient.Deserialize(response.Content, typeof(UserTokenObject), response.Headers);
        }
    
        /// <summary>
        /// sPostLogoutSummaryTitle sPostLogoutSummaryDesc
        /// </summary>
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns></returns>            
        public void LogoutUser (string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
    
            var path = "/users/logout";
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
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling LogoutUser: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling LogoutUser: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Sign Up  User  |      Signs up to the EMS Server with an appropriate EMS User.
        /// </summary>
        /// <param name="body">Object to sign up a new EMS User in the EMS Server</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>UserSignUpResponseObject</returns>            
        public UserSignUpResponseObject SignupUser (UserCredentialsObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling SignupUser");
            
    
            var path = "/users/signup";
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
                throw new ApiException ((int)response.StatusCode, "Error calling SignupUser: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SignupUser: " + response.ErrorMessage, response.ErrorMessage);
    
            return (UserSignUpResponseObject) ApiClient.Deserialize(response.Content, typeof(UserSignUpResponseObject), response.Headers);
        }
    
        /// <summary>
        /// Update User  |      Used to update a &#x60;User&#x60;. **id** is the unique EMS User identifier (UID) in the EMS database.
        /// </summary>
        /// <param name="id">A user ID</param> 
        /// <param name="body">Add any fieldName</param> 
        /// <param name="xEmbarcaderoApplicationId"></param> 
        /// <param name="xEmbarcaderoAppSecret"></param> 
        /// <param name="xEmbarcaderoMasterSecret"></param> 
        /// <returns>UpdatedObject</returns>            
        public UpdatedObject UpdateUser (string id, UpdateObject body, string xEmbarcaderoApplicationId, string xEmbarcaderoAppSecret, string xEmbarcaderoMasterSecret)
        {
            
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling UpdateUser");
            
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling UpdateUser");
            
    
            var path = "/users/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
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
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateUser: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateUser: " + response.ErrorMessage, response.ErrorMessage);
    
            return (UpdatedObject) ApiClient.Deserialize(response.Content, typeof(UpdatedObject), response.Headers);
        }
    
    }
}
