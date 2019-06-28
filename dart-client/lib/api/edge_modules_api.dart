part of swagger.api;



class EdgeModulesApi {
  final ApiClient apiClient;

  EdgeModulesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get Module
  ///
  ///  |      Used to retrieve all data from &#x60;EdgeModule&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
  Future<EdgeModuleObject> getModule(String mname, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = null;

    // verify required params are set
    if(mname == null) {
     throw new ApiException(400, "Missing required param: mname");
    }

    // create path and map variables
    String path = "/edgemodules/{mname}".replaceAll("{format}","json").replaceAll("{" + "mname" + "}", mname.toString());

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
          apiClient.deserialize(response.body, 'EdgeModuleObject') as EdgeModuleObject ;
    } else {
      return null;
    }
  }
  /// Get EdgeModule Resource
  ///
  ///  |      Used to retrieve all data from a resource of an EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database. **resourcename** is the name of the resource.
  Future<EdgeModuleResourceObject> getModuleResource(String mname, String name, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = null;

    // verify required params are set
    if(mname == null) {
     throw new ApiException(400, "Missing required param: mname");
    }
    if(name == null) {
     throw new ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/edgemodules/{mname}/resources/{name}".replaceAll("{format}","json").replaceAll("{" + "mname" + "}", mname.toString()).replaceAll("{" + "name" + "}", name.toString());

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
          apiClient.deserialize(response.body, 'EdgeModuleResourceObject') as EdgeModuleResourceObject ;
    } else {
      return null;
    }
  }
  /// Get EdgeModule Resources
  ///
  ///  |      Used to retrieve all data from the resources of an EdgeModule.
  Future<List<EdgeModuleResourceObject>> getModuleResources(String mname, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = null;

    // verify required params are set
    if(mname == null) {
     throw new ApiException(400, "Missing required param: mname");
    }

    // create path and map variables
    String path = "/edgemodules/{mname}/resources".replaceAll("{format}","json").replaceAll("{" + "mname" + "}", mname.toString());

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
        (apiClient.deserialize(response.body, 'List<EdgeModuleResourceObject>') as List).map((item) => item as EdgeModuleResourceObject).toList();
    } else {
      return null;
    }
  }
  /// Get Module
  ///
  ///  |      Used to retrieve all data from &#x60;EdgeModule&#x60;.      Optional query param of **skip, limit, order, where** determines       size of returned array, filtered and order by.
  Future<List<EdgeModuleObject>> getModules({ String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/edgemodules".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<EdgeModuleObject>') as List).map((item) => item as EdgeModuleObject).toList();
    } else {
      return null;
    }
  }
  /// Get Fields
  ///
  ///  |      Used to retrieve all the &#x60;field names&#x60; of the EMS EdgeModule (including the custom fields).
  Future<FieldsEdgeModuleObject> getModulesFields({ String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/edgemodules/fields".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'FieldsEdgeModuleObject') as FieldsEdgeModuleObject ;
    } else {
      return null;
    }
  }
  /// Get EdgeModules Resources
  ///
  ///  |      Used to retrieve all data from the resources of all EdgeModules.
  Future<List<EdgeModuleResourceObject>> getResources({ String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/edgemodules/resources".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<EdgeModuleResourceObject>') as List).map((item) => item as EdgeModuleResourceObject).toList();
    } else {
      return null;
    }
  }
  /// Get Resource Fields
  ///
  ///  |      Used to retrieve the &#x60;field names&#x60; of all the resources of the EMS EdgeModule (including the custom fields).
  Future<FieldsEdgeModuleObject> getResourcesFields({ String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/edgemodules/resources/fields".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'FieldsEdgeModuleObject') as FieldsEdgeModuleObject ;
    } else {
      return null;
    }
  }
  /// Add Module
  ///
  ///  |      Used to add a new &#x60;EdgeModule&#x60; object to the EMS database.
  Future<EdgeModuleAddedObject> registerModule(EdgeModuleAddObject body, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/edgemodules".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'EdgeModuleAddedObject') as EdgeModuleAddedObject ;
    } else {
      return null;
    }
  }
  /// Add Module Resource
  ///
  ///  |      Used to register a new resource from an EMS EdgeModule. **mname** is the unique EMS EdgeModule identifier in the EMS database.
  Future<EdgeModuleResourceAddedObject> registerModuleResource(String mname, EdgeModuleResourceAddObject body, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = body;

    // verify required params are set
    if(mname == null) {
     throw new ApiException(400, "Missing required param: mname");
    }
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/edgemodules/{mname}/resources".replaceAll("{format}","json").replaceAll("{" + "mname" + "}", mname.toString());

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
          apiClient.deserialize(response.body, 'EdgeModuleResourceAddedObject') as EdgeModuleResourceAddedObject ;
    } else {
      return null;
    }
  }
  /// Delete Module
  ///
  ///  |      Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
  Future unregisterModule(String mname, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = null;

    // verify required params are set
    if(mname == null) {
     throw new ApiException(400, "Missing required param: mname");
    }

    // create path and map variables
    String path = "/edgemodules/{mname}".replaceAll("{format}","json").replaceAll("{" + "mname" + "}", mname.toString());

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
  /// Delete Module Resource
  ///
  ///  |      Used to delete an &#x60;EdgeModule Resource&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database. **resourcename** is the name of the resource.
  Future unregisterModuleResource(String mname, String name, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = null;

    // verify required params are set
    if(mname == null) {
     throw new ApiException(400, "Missing required param: mname");
    }
    if(name == null) {
     throw new ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/edgemodules/{mname}/resources/{name}".replaceAll("{format}","json").replaceAll("{" + "mname" + "}", mname.toString()).replaceAll("{" + "name" + "}", name.toString());

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
  /// Update Module
  ///
  ///  |      Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
  Future<EdgeModuleUpdatedObject> updateModule(String mname, EdgeModuleUpdateObject body, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = body;

    // verify required params are set
    if(mname == null) {
     throw new ApiException(400, "Missing required param: mname");
    }
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/edgemodules/{mname}".replaceAll("{format}","json").replaceAll("{" + "mname" + "}", mname.toString());

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
          apiClient.deserialize(response.body, 'EdgeModuleUpdatedObject') as EdgeModuleUpdatedObject ;
    } else {
      return null;
    }
  }
  /// Update Module Resource
  ///
  ///  |      Used to update an &#x60;EdgeModule&#x60;. **mname** is the unique EMS EdgeModule identifier (MID) in the EMS database.
  Future<EdgeModuleResourceUpdatedObject> updateModuleResource(String mname, String name, EdgeModuleResourceUpdateObject body, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = body;

    // verify required params are set
    if(mname == null) {
     throw new ApiException(400, "Missing required param: mname");
    }
    if(name == null) {
     throw new ApiException(400, "Missing required param: name");
    }
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/edgemodules/{mname}/resources/{name}".replaceAll("{format}","json").replaceAll("{" + "mname" + "}", mname.toString()).replaceAll("{" + "name" + "}", name.toString());

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
          apiClient.deserialize(response.body, 'EdgeModuleResourceUpdatedObject') as EdgeModuleResourceUpdatedObject ;
    } else {
      return null;
    }
  }
}
