package io.swagger.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import io.swagger.api.ApiUtils

import io.swagger.model.EdgeModuleAddObject
import io.swagger.model.EdgeModuleAddedObject
import io.swagger.model.EdgeModuleObject
import io.swagger.model.EdgeModuleResourceAddObject
import io.swagger.model.EdgeModuleResourceAddedObject
import io.swagger.model.EdgeModuleResourceObject
import io.swagger.model.EdgeModuleResourceUpdateObject
import io.swagger.model.EdgeModuleResourceUpdatedObject
import io.swagger.model.EdgeModuleUpdateObject
import io.swagger.model.EdgeModuleUpdatedObject
import io.swagger.model.FieldsEdgeModuleObject

import java.util.*;

@Mixin(ApiUtils)
class EdgeModulesApi {
    String basePath = "http://localhost:8080"
    String versionPath = "/api/v1"

    def getModule ( String mname, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/{mname}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (mname == null) {
            throw new RuntimeException("missing required params mname")
        }

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    EdgeModuleObject.class )
                    
    }
    def getModuleResource ( String mname, String name, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/{mname}/resources/{name}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (mname == null) {
            throw new RuntimeException("missing required params mname")
        }
        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    EdgeModuleResourceObject.class )
                    
    }
    def getModuleResources ( String mname, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/{mname}/resources"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (mname == null) {
            throw new RuntimeException("missing required params mname")
        }

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "array",
                    EdgeModuleResourceObject.class )
                    
    }
    def getModules ( String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "array",
                    EdgeModuleObject.class )
                    
    }
    def getModulesFields ( String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/fields"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    FieldsEdgeModuleObject.class )
                    
    }
    def getResources ( String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/resources"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "array",
                    EdgeModuleResourceObject.class )
                    
    }
    def getResourcesFields ( String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/resources/fields"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "",
                    FieldsEdgeModuleObject.class )
                    
    }
    def registerModule ( EdgeModuleAddObject body, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
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
                    EdgeModuleAddedObject.class )
                    
    }
    def registerModuleResource ( String mname, EdgeModuleResourceAddObject body, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/{mname}/resources"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (mname == null) {
            throw new RuntimeException("missing required params mname")
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
                    EdgeModuleResourceAddedObject.class )
                    
    }
    def unregisterModule ( String mname, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/{mname}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (mname == null) {
            throw new RuntimeException("missing required params mname")
        }

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "DELETE", "",
                    null )
                    
    }
    def unregisterModuleResource ( String mname, String name, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/{mname}/resources/{name}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (mname == null) {
            throw new RuntimeException("missing required params mname")
        }
        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "DELETE", "",
                    null )
                    
    }
    def updateModule ( String mname, EdgeModuleUpdateObject body, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/{mname}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (mname == null) {
            throw new RuntimeException("missing required params mname")
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
                    EdgeModuleUpdatedObject.class )
                    
    }
    def updateModuleResource ( String mname, String name, EdgeModuleResourceUpdateObject body, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/edgemodules/{mname}/resources/{name}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (mname == null) {
            throw new RuntimeException("missing required params mname")
        }
        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
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
                    EdgeModuleResourceUpdatedObject.class )
                    
    }
}
