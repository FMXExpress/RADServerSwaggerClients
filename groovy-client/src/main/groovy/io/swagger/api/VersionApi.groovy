package io.swagger.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import io.swagger.api.ApiUtils

import io.swagger.model.VersionObject

import java.util.*;

@Mixin(ApiUtils)
class VersionApi {
    String basePath = "http://localhost:8080"
    String versionPath = "/api/v1"

    def getVersion ( String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/version"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    VersionObject.class )
                    
    }
}
