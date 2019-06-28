part of swagger.api;



class PushApi {
  final ApiClient apiClient;

  PushApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Send Push
  ///
  /// Used to send a push notification message to a registered device
  Future send(PushObject body, { String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/push".replaceAll("{format}","json");

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
}
