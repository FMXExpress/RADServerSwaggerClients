package io.swagger.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import io.swagger.api.ApiUtils


import java.util.*;

@Mixin(ApiUtils)
class EdgeModulesInvokersApi {
    String basePath = "http://localhost:8080"
    String versionPath = "/api/v1"

    def deleteResourceEndpoint ( String mname, String rname, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/{mname}/{rname}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (mname == null) {
            throw new RuntimeException("missing required params mname")
        }
        // verify required params are set
        if (rname == null) {
            throw new RuntimeException("missing required params rname")
        }

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "DELETE", "",
                    null )
                    
    }
    def deleteResourceEndpointItem ( String mname, String rname, String wildcard, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/{mname}/{rname}/{wildcard}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (mname == null) {
            throw new RuntimeException("missing required params mname")
        }
        // verify required params are set
        if (rname == null) {
            throw new RuntimeException("missing required params rname")
        }
        // verify required params are set
        if (wildcard == null) {
            throw new RuntimeException("missing required params wildcard")
        }

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "DELETE", "",
                    null )
                    
    }
    def getResourceEndpoint ( String mname, String rname, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/{mname}/{rname}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (mname == null) {
            throw new RuntimeException("missing required params mname")
        }
        // verify required params are set
        if (rname == null) {
            throw new RuntimeException("missing required params rname")
        }

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    null )
                    
    }
    def getResourceEndpointItem ( String mname, String rname, String wildcard, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/{mname}/{rname}/{wildcard}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (mname == null) {
            throw new RuntimeException("missing required params mname")
        }
        // verify required params are set
        if (rname == null) {
            throw new RuntimeException("missing required params rname")
        }
        // verify required params are set
        if (wildcard == null) {
            throw new RuntimeException("missing required params wildcard")
        }

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    null )
                    
    }
    def patchResourceEndpoint ( String mname, String rname, Object body, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/{mname}/{rname}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (mname == null) {
            throw new RuntimeException("missing required params mname")
        }
        // verify required params are set
        if (rname == null) {
            throw new RuntimeException("missing required params rname")
        }
        // verify required params are set
        if (body == null) {
            throw new RuntimeException("missing required params body")
        }

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "PATCH", "",
                    null )
                    
    }
    def patchResourceEndpointItem ( String mname, String rname, String wildcard, Object body, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/{mname}/{rname}/{wildcard}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (mname == null) {
            throw new RuntimeException("missing required params mname")
        }
        // verify required params are set
        if (rname == null) {
            throw new RuntimeException("missing required params rname")
        }
        // verify required params are set
        if (wildcard == null) {
            throw new RuntimeException("missing required params wildcard")
        }
        // verify required params are set
        if (body == null) {
            throw new RuntimeException("missing required params body")
        }

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "PATCH", "",
                    null )
                    
    }
    def postResourceEndpoint ( String mname, String rname, Object body, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/{mname}/{rname}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (mname == null) {
            throw new RuntimeException("missing required params mname")
        }
        // verify required params are set
        if (rname == null) {
            throw new RuntimeException("missing required params rname")
        }
        // verify required params are set
        if (body == null) {
            throw new RuntimeException("missing required params body")
        }

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    null )
                    
    }
    def postResourceEndpointItem ( String mname, String rname, String wildcard, Object body, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/{mname}/{rname}/{wildcard}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (mname == null) {
            throw new RuntimeException("missing required params mname")
        }
        // verify required params are set
        if (rname == null) {
            throw new RuntimeException("missing required params rname")
        }
        // verify required params are set
        if (wildcard == null) {
            throw new RuntimeException("missing required params wildcard")
        }
        // verify required params are set
        if (body == null) {
            throw new RuntimeException("missing required params body")
        }

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "POST", "",
                    null )
                    
    }
    def putResourceEndpoint ( String mname, String rname, Object body, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/{mname}/{rname}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (mname == null) {
            throw new RuntimeException("missing required params mname")
        }
        // verify required params are set
        if (rname == null) {
            throw new RuntimeException("missing required params rname")
        }
        // verify required params are set
        if (body == null) {
            throw new RuntimeException("missing required params body")
        }

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "PUT", "",
                    null )
                    
    }
    def putResourceEndpointItem ( String mname, String rname, String wildcard, Object body, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/{mname}/{rname}/{wildcard}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (mname == null) {
            throw new RuntimeException("missing required params mname")
        }
        // verify required params are set
        if (rname == null) {
            throw new RuntimeException("missing required params rname")
        }
        // verify required params are set
        if (wildcard == null) {
            throw new RuntimeException("missing required params wildcard")
        }
        // verify required params are set
        if (body == null) {
            throw new RuntimeException("missing required params body")
        }

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "PUT", "",
                    null )
                    
    }
}
