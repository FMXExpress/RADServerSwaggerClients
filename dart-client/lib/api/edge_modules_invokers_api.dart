part of swagger.api;



class EdgeModulesInvokersApi {
  final ApiClient apiClient;

  EdgeModulesInvokersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Invoke Resource Delete Method
  ///
  /// Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
  Future deleteResourceEndpoint(String mname, String rname, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = null;

    // verify required params are set
    if(mname == null) {
     throw new ApiException(400, "Missing required param: mname");
    }
    if(rname == null) {
     throw new ApiException(400, "Missing required param: rname");
    }

    // create path and map variables
    String path = "/edgemodules/{mname}/{rname}".replaceAll("{format}","json").replaceAll("{" + "mname" + "}", mname.toString()).replaceAll("{" + "rname" + "}", rname.toString());

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
  /// Invoke Resource/_* Delete Method
  ///
  /// Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
  Future deleteResourceEndpointItem(String mname, String rname, String wildcard, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = null;

    // verify required params are set
    if(mname == null) {
     throw new ApiException(400, "Missing required param: mname");
    }
    if(rname == null) {
     throw new ApiException(400, "Missing required param: rname");
    }
    if(wildcard == null) {
     throw new ApiException(400, "Missing required param: wildcard");
    }

    // create path and map variables
    String path = "/edgemodules/{mname}/{rname}/{wildcard}".replaceAll("{format}","json").replaceAll("{" + "mname" + "}", mname.toString()).replaceAll("{" + "rname" + "}", rname.toString()).replaceAll("{" + "wildcard" + "}", wildcard.toString());

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
  /// Invoke Resource Get Method
  ///
  /// Used to invoke the GET method of the resource from an existing EMS EdgeModule.
  Future getResourceEndpoint(String mname, String rname, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = null;

    // verify required params are set
    if(mname == null) {
     throw new ApiException(400, "Missing required param: mname");
    }
    if(rname == null) {
     throw new ApiException(400, "Missing required param: rname");
    }

    // create path and map variables
    String path = "/edgemodules/{mname}/{rname}".replaceAll("{format}","json").replaceAll("{" + "mname" + "}", mname.toString()).replaceAll("{" + "rname" + "}", rname.toString());

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
          ;
    } else {
      return ;
    }
  }
  /// Invoke Resource/_* Get Method
  ///
  /// Used to invoke the GET method of the resource from an existing EMS EdgeModule.
  Future getResourceEndpointItem(String mname, String rname, String wildcard, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = null;

    // verify required params are set
    if(mname == null) {
     throw new ApiException(400, "Missing required param: mname");
    }
    if(rname == null) {
     throw new ApiException(400, "Missing required param: rname");
    }
    if(wildcard == null) {
     throw new ApiException(400, "Missing required param: wildcard");
    }

    // create path and map variables
    String path = "/edgemodules/{mname}/{rname}/{wildcard}".replaceAll("{format}","json").replaceAll("{" + "mname" + "}", mname.toString()).replaceAll("{" + "rname" + "}", rname.toString()).replaceAll("{" + "wildcard" + "}", wildcard.toString());

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
          ;
    } else {
      return ;
    }
  }
  /// Invoke Resource Patch Method
  ///
  /// Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
  Future patchResourceEndpoint(String mname, String rname, Object body, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = body;

    // verify required params are set
    if(mname == null) {
     throw new ApiException(400, "Missing required param: mname");
    }
    if(rname == null) {
     throw new ApiException(400, "Missing required param: rname");
    }
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/edgemodules/{mname}/{rname}".replaceAll("{format}","json").replaceAll("{" + "mname" + "}", mname.toString()).replaceAll("{" + "rname" + "}", rname.toString());

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
                                             'PATCH',
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
  /// Invoke Resource/_* Patch Method
  ///
  /// Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
  Future patchResourceEndpointItem(String mname, String rname, String wildcard, Object body, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = body;

    // verify required params are set
    if(mname == null) {
     throw new ApiException(400, "Missing required param: mname");
    }
    if(rname == null) {
     throw new ApiException(400, "Missing required param: rname");
    }
    if(wildcard == null) {
     throw new ApiException(400, "Missing required param: wildcard");
    }
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/edgemodules/{mname}/{rname}/{wildcard}".replaceAll("{format}","json").replaceAll("{" + "mname" + "}", mname.toString()).replaceAll("{" + "rname" + "}", rname.toString()).replaceAll("{" + "wildcard" + "}", wildcard.toString());

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
                                             'PATCH',
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
  /// Invoke Resource Post Method
  ///
  /// Used to invoke the POST method of the resource from an existing EMS EdgeModule.
  Future postResourceEndpoint(String mname, String rname, Object body, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = body;

    // verify required params are set
    if(mname == null) {
     throw new ApiException(400, "Missing required param: mname");
    }
    if(rname == null) {
     throw new ApiException(400, "Missing required param: rname");
    }
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/edgemodules/{mname}/{rname}".replaceAll("{format}","json").replaceAll("{" + "mname" + "}", mname.toString()).replaceAll("{" + "rname" + "}", rname.toString());

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
          ;
    } else {
      return ;
    }
  }
  /// Invoke Resource/_* Post Method
  ///
  /// Used to invoke the POST method of the resource from an existing EMS EdgeModule.
  Future postResourceEndpointItem(String mname, String rname, String wildcard, Object body, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = body;

    // verify required params are set
    if(mname == null) {
     throw new ApiException(400, "Missing required param: mname");
    }
    if(rname == null) {
     throw new ApiException(400, "Missing required param: rname");
    }
    if(wildcard == null) {
     throw new ApiException(400, "Missing required param: wildcard");
    }
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/edgemodules/{mname}/{rname}/{wildcard}".replaceAll("{format}","json").replaceAll("{" + "mname" + "}", mname.toString()).replaceAll("{" + "rname" + "}", rname.toString()).replaceAll("{" + "wildcard" + "}", wildcard.toString());

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
          ;
    } else {
      return ;
    }
  }
  /// Invoke Resource Put Method
  ///
  /// Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
  Future putResourceEndpoint(String mname, String rname, Object body, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = body;

    // verify required params are set
    if(mname == null) {
     throw new ApiException(400, "Missing required param: mname");
    }
    if(rname == null) {
     throw new ApiException(400, "Missing required param: rname");
    }
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/edgemodules/{mname}/{rname}".replaceAll("{format}","json").replaceAll("{" + "mname" + "}", mname.toString()).replaceAll("{" + "rname" + "}", rname.toString());

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
          ;
    } else {
      return ;
    }
  }
  /// Invoke Resource/_* Put Method
  ///
  /// Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
  Future putResourceEndpointItem(String mname, String rname, String wildcard, Object body, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = body;

    // verify required params are set
    if(mname == null) {
     throw new ApiException(400, "Missing required param: mname");
    }
    if(rname == null) {
     throw new ApiException(400, "Missing required param: rname");
    }
    if(wildcard == null) {
     throw new ApiException(400, "Missing required param: wildcard");
    }
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/edgemodules/{mname}/{rname}/{wildcard}".replaceAll("{format}","json").replaceAll("{" + "mname" + "}", mname.toString()).replaceAll("{" + "rname" + "}", rname.toString()).replaceAll("{" + "wildcard" + "}", wildcard.toString());

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
          ;
    } else {
      return ;
    }
  }
}
