package io.swagger.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import io.swagger.api.ApiUtils


import java.util.*;

@Mixin(ApiUtils)
class ApiDocApi {
    String basePath = "http://localhost:8080"
    String versionPath = "/api/v1"

    def aPI ( String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/api"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    null )
                    
    }
    def getAPIJSONFormat ( String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/api/apidoc.json"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    null )
                    
    }
    def getAPIYAMLFormat ( String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/api/apidoc.yaml"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    null )
                    
    }
    def getAPIYAMLFormatEndPoint ( String item, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/api/{item}/apidoc.yaml"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (item == null) {
            throw new RuntimeException("missing required params item")
        }

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    null )
                    
    }
}
