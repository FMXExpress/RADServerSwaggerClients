part of swagger.api;



class InstallationsApi {
  final ApiClient apiClient;

  InstallationsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add Installation
  ///
  ///  |      Used to add a new &#x60;Installation&#x60; object to the EMS database.
  Future<InstallationAddedObject> addInstallation(InstallationAddObject body, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/installations".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["X-Embarcadero-Application-Id"] = xEmbarcaderoApplicationId;
headerParams["X-Embarcadero-App-Secret"] = xEmbarcaderoAppSecret;
headerParams["X-Embarcadero-Master-Secret"] = xEmbarcaderoMasterSecret;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'InstallationAddedObject') as InstallationAddedObject ;
    } else {
      return null;
    }
  }
  /// Delete Installation
  ///
  ///  |      Used to delete an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database.
  Future deleteInstallation(String id, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/installations/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["X-Embarcadero-Application-Id"] = xEmbarcaderoApplicationId;
headerParams["X-Embarcadero-App-Secret"] = xEmbarcaderoAppSecret;
headerParams["X-Embarcadero-Master-Secret"] = xEmbarcaderoMasterSecret;

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
  /// Get Installation Channels
  ///
  ///  |       Used to retrieve the available channels to which the device has subscribed. **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
  Future<List<ChannelName>> getChannels({ String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/installations/channels".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["X-Embarcadero-Application-Id"] = xEmbarcaderoApplicationId;
headerParams["X-Embarcadero-App-Secret"] = xEmbarcaderoAppSecret;
headerParams["X-Embarcadero-Master-Secret"] = xEmbarcaderoMasterSecret;

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<ChannelName>') as List).map((item) => item as ChannelName).toList();
    } else {
      return null;
    }
  }
  /// Get Installation
  ///
  ///  |      Used to retrieve all data from a specific &#x60;Installation&#x60; (registered device). **id** is the unique EMS Installation identifier (InstallationID) in the EMS database.
  Future<InstallationObject> getInstallation(String id, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/installations/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["X-Embarcadero-Application-Id"] = xEmbarcaderoApplicationId;
headerParams["X-Embarcadero-App-Secret"] = xEmbarcaderoAppSecret;
headerParams["X-Embarcadero-Master-Secret"] = xEmbarcaderoMasterSecret;

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'InstallationObject') as InstallationObject ;
    } else {
      return null;
    }
  }
  /// Get Fields
  ///
  ///  |      Used to retrieve all the &#x60;field names&#x60; of the EMS Installation (including the custom fields).
  Future<List<FieldInstallationObject>> getInstallationFields({ String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/installations/fields".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["X-Embarcadero-Application-Id"] = xEmbarcaderoApplicationId;
headerParams["X-Embarcadero-App-Secret"] = xEmbarcaderoAppSecret;
headerParams["X-Embarcadero-Master-Secret"] = xEmbarcaderoMasterSecret;

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<FieldInstallationObject>') as List).map((item) => item as FieldInstallationObject).toList();
    } else {
      return null;
    }
  }
  /// Get Installations
  ///
  ///  |      Used to retrieve all data from &#x60;Installation&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
  Future<List<InstallationObject>> getInstallations({ String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, num skip, num limit, num order, String where }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/installations".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(skip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "skip", skip));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(order != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "order", order));
    }
    if(where != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "where", where));
    }
    headerParams["X-Embarcadero-Application-Id"] = xEmbarcaderoApplicationId;
headerParams["X-Embarcadero-App-Secret"] = xEmbarcaderoAppSecret;
headerParams["X-Embarcadero-Master-Secret"] = xEmbarcaderoMasterSecret;

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<InstallationObject>') as List).map((item) => item as InstallationObject).toList();
    } else {
      return null;
    }
  }
  /// Update Installation
  ///
  ///  |      Used to update an &#x60;Installation&#x60;. **id** is the unique EMS Installation identifier (IID) in the EMS database.
  Future<UpdatedInstallationObject> updateInstallation(String id, UpdateInstallationObject body, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = body;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/installations/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["X-Embarcadero-Application-Id"] = xEmbarcaderoApplicationId;
headerParams["X-Embarcadero-App-Secret"] = xEmbarcaderoAppSecret;
headerParams["X-Embarcadero-Master-Secret"] = xEmbarcaderoMasterSecret;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'UpdatedInstallationObject') as UpdatedInstallationObject ;
    } else {
      return null;
    }
  }
}
