part of swagger.api;



class VersionApi {
  final ApiClient apiClient;

  VersionApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get version
  ///
  ///  |      Used to retrieve the &#x60;Version&#x60; of the EMS Server.
  Future<VersionObject> getVersion({ String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/version".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'VersionObject') as VersionObject ;
    } else {
      return null;
    }
  }
}
