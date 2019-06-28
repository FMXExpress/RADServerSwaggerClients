package io.swagger.client.api {

import io.swagger.common.ApiInvoker;
import io.swagger.exception.ApiErrorCodes;
import io.swagger.exception.ApiError;
import io.swagger.common.ApiUserCredentials;
import io.swagger.event.Response;
import io.swagger.common.SwaggerApi;
import io.swagger.client.model.ChannelName;
import io.swagger.client.model.FieldInstallationObject;
import io.swagger.client.model.InstallationAddObject;
import io.swagger.client.model.InstallationAddedObject;
import io.swagger.client.model.InstallationObject;
import io.swagger.client.model.UpdateInstallationObject;
import io.swagger.client.model.UpdatedInstallationObject;

import mx.rpc.AsyncToken;
import mx.utils.UIDUtil;
import flash.utils.Dictionary;
import flash.events.EventDispatcher;

public class InstallationsApi extends SwaggerApi {
    /**
    * Constructor for the InstallationsApi api client
    * @param apiCredentials Wrapper object for tokens and hostName required towards authentication
    * @param eventDispatcher Optional event dispatcher that when provided is used by the SDK to dispatch any Response
    */
    public function InstallationsApi(apiCredentials: ApiUserCredentials, eventDispatcher: EventDispatcher = null) {
        super(apiCredentials, eventDispatcher);
    }

        public static const event_add_installation: String = "add_installation";
        public static const event_delete_installation: String = "delete_installation";
        public static const event_get_channels: String = "get_channels";
        public static const event_get_installation: String = "get_installation";
        public static const event_get_installation_fields: String = "get_installation_fields";
        public static const event_get_installations: String = "get_installations";
        public static const event_update_installation: String = "update_installation";


    /*
     * Returns InstallationAddedObject 
     */
    public function add_installation (body: InstallationAddObject, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/installations".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        
        headerParams["X-Embarcadero-Application-Id"] = toPathValue(xEmbarcaderoApplicationId);
headerParams["X-Embarcadero-App-Secret"] = toPathValue(xEmbarcaderoAppSecret);
headerParams["X-Embarcadero-Master-Secret"] = toPathValue(xEmbarcaderoMasterSecret);

        var token:AsyncToken = getApiInvoker().invokeAPI(path, "POST", queryParams, body, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "add_installation";

        token.returnType = InstallationAddedObject;
        return requestId;

    }

    /*
     * Returns void 
     */
    public function delete_installation (id: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/installations/{id}".replace(/{format}/g,"xml").replace("{" + "id" + "}", getApiInvoker().escapeString(id));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        
        headerParams["X-Embarcadero-Application-Id"] = toPathValue(xEmbarcaderoApplicationId);
headerParams["X-Embarcadero-App-Secret"] = toPathValue(xEmbarcaderoAppSecret);
headerParams["X-Embarcadero-Master-Secret"] = toPathValue(xEmbarcaderoMasterSecret);

        var token:AsyncToken = getApiInvoker().invokeAPI(path, "DELETE", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "delete_installation";

        token.returnType = null ;
        return requestId;

    }

    /*
     * Returns Array 
     */
    public function get_channels (xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/installations/channels".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        
        headerParams["X-Embarcadero-Application-Id"] = toPathValue(xEmbarcaderoApplicationId);
headerParams["X-Embarcadero-App-Secret"] = toPathValue(xEmbarcaderoAppSecret);
headerParams["X-Embarcadero-Master-Secret"] = toPathValue(xEmbarcaderoMasterSecret);

        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_channels";

        token.returnType = Array;
        return requestId;

    }

    /*
     * Returns InstallationObject 
     */
    public function get_installation (id: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/installations/{id}".replace(/{format}/g,"xml").replace("{" + "id" + "}", getApiInvoker().escapeString(id));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        
        headerParams["X-Embarcadero-Application-Id"] = toPathValue(xEmbarcaderoApplicationId);
headerParams["X-Embarcadero-App-Secret"] = toPathValue(xEmbarcaderoAppSecret);
headerParams["X-Embarcadero-Master-Secret"] = toPathValue(xEmbarcaderoMasterSecret);

        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_installation";

        token.returnType = InstallationObject;
        return requestId;

    }

    /*
     * Returns Array 
     */
    public function get_installation_fields (xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/installations/fields".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        
        headerParams["X-Embarcadero-Application-Id"] = toPathValue(xEmbarcaderoApplicationId);
headerParams["X-Embarcadero-App-Secret"] = toPathValue(xEmbarcaderoAppSecret);
headerParams["X-Embarcadero-Master-Secret"] = toPathValue(xEmbarcaderoMasterSecret);

        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_installation_fields";

        token.returnType = Array;
        return requestId;

    }

    /*
     * Returns Array 
     */
    public function get_installations (xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String, skip: Number, limit: Number, order: Number, where: String): String {
        // create path and map variables
        var path: String = "/installations".replace(/{format}/g,"xml");

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        if("null" != String(skip))
            queryParams["skip"] = toPathValue(skip);
if("null" != String(limit))
            queryParams["limit"] = toPathValue(limit);
if("null" != String(order))
            queryParams["order"] = toPathValue(order);
if("null" != String(where))
            queryParams["where"] = toPathValue(where);

        headerParams["X-Embarcadero-Application-Id"] = toPathValue(xEmbarcaderoApplicationId);
headerParams["X-Embarcadero-App-Secret"] = toPathValue(xEmbarcaderoAppSecret);
headerParams["X-Embarcadero-Master-Secret"] = toPathValue(xEmbarcaderoMasterSecret);

        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_installations";

        token.returnType = Array;
        return requestId;

    }

    /*
     * Returns UpdatedInstallationObject 
     */
    public function update_installation (id: String, body: UpdateInstallationObject, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/installations/{id}".replace(/{format}/g,"xml").replace("{" + "id" + "}", getApiInvoker().escapeString(id));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if(        // verify required params are set
        if() {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }
) {
            throw new ApiError(400, "missing required params");
        }

        
        headerParams["X-Embarcadero-Application-Id"] = toPathValue(xEmbarcaderoApplicationId);
headerParams["X-Embarcadero-App-Secret"] = toPathValue(xEmbarcaderoAppSecret);
headerParams["X-Embarcadero-Master-Secret"] = toPathValue(xEmbarcaderoMasterSecret);

        var token:AsyncToken = getApiInvoker().invokeAPI(path, "PUT", queryParams, body, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "update_installation";

        token.returnType = UpdatedInstallationObject;
        return requestId;

    }
}
}
