package io.swagger.api;

import groovyx.net.http.*
import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*
import io.swagger.api.ApiUtils

import io.swagger.model.BigDecimal
import io.swagger.model.FieldGroupObject
import io.swagger.model.GroupAddObject
import io.swagger.model.GroupObject
import io.swagger.model.UpdateGroupObject
import io.swagger.model.UpdatedGroupObject

import java.util.*;

@Mixin(ApiUtils)
class GroupsApi {
    String basePath = "http://localhost:8080"
    String versionPath = "/api/v1"

    def addGroup ( GroupAddObject body, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/groups"

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
                    null )
                    
    }
    def deleteGroup ( String item, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/groups/{item}"

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
                    "DELETE", "",
                    null )
                    
    }
    def getGroup ( String item, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/groups/{item}"

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
                    GroupObject.class )
                    
    }
    def getGroupFields ( String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/groups/fields"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    

        
        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "array",
                    FieldGroupObject.class )
                    
    }
    def getGroups ( String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, BigDecimal skip, BigDecimal limit, BigDecimal order, String where, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/groups"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    

        if (!"null".equals(String.valueOf(skip)))
            queryParams.put("skip", String.valueOf(skip))
if (!"null".equals(String.valueOf(limit)))
            queryParams.put("limit", String.valueOf(limit))
if (!"null".equals(String.valueOf(order)))
            queryParams.put("order", String.valueOf(order))
if (!"null".equals(String.valueOf(where)))
            queryParams.put("where", String.valueOf(where))

        headerParams.put("X-Embarcadero-Application-Id", xEmbarcaderoApplicationId)
        headerParams.put("X-Embarcadero-App-Secret", xEmbarcaderoAppSecret)
        headerParams.put("X-Embarcadero-Master-Secret", xEmbarcaderoMasterSecret)

        // Also still TODO: form params, body param

        invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams,
                    "GET", "array",
                    GroupObject.class )
                    
    }
    def updateGroup ( String item, UpdateGroupObject body, String xEmbarcaderoApplicationId, String xEmbarcaderoAppSecret, String xEmbarcaderoMasterSecret, Closure onSuccess, Closure onFailure)  {
        // create path and map path parameters (TODO)
        String resourcePath = "/groups/{item}"

        // query params
        def queryParams = [:]
        def headerParams = [:]
    
        // verify required params are set
        if (item == null) {
            throw new RuntimeException("missing required params item")
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
                    UpdatedGroupObject.class )
                    
    }
}
