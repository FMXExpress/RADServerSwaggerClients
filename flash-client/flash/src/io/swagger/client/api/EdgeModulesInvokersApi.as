package io.swagger.client.api {

import io.swagger.common.ApiInvoker;
import io.swagger.exception.ApiErrorCodes;
import io.swagger.exception.ApiError;
import io.swagger.common.ApiUserCredentials;
import io.swagger.event.Response;
import io.swagger.common.SwaggerApi;
import io.swagger.client.model.Object;

import mx.rpc.AsyncToken;
import mx.utils.UIDUtil;
import flash.utils.Dictionary;
import flash.events.EventDispatcher;

public class EdgeModulesInvokersApi extends SwaggerApi {
    /**
    * Constructor for the EdgeModulesInvokersApi api client
    * @param apiCredentials Wrapper object for tokens and hostName required towards authentication
    * @param eventDispatcher Optional event dispatcher that when provided is used by the SDK to dispatch any Response
    */
    public function EdgeModulesInvokersApi(apiCredentials: ApiUserCredentials, eventDispatcher: EventDispatcher = null) {
        super(apiCredentials, eventDispatcher);
    }

        public static const event_delete_resource_endpoint: String = "delete_resource_endpoint";
        public static const event_delete_resource_endpoint_item: String = "delete_resource_endpoint_item";
        public static const event_get_resource_endpoint: String = "get_resource_endpoint";
        public static const event_get_resource_endpoint_item: String = "get_resource_endpoint_item";
        public static const event_patch_resource_endpoint: String = "patch_resource_endpoint";
        public static const event_patch_resource_endpoint_item: String = "patch_resource_endpoint_item";
        public static const event_post_resource_endpoint: String = "post_resource_endpoint";
        public static const event_post_resource_endpoint_item: String = "post_resource_endpoint_item";
        public static const event_put_resource_endpoint: String = "put_resource_endpoint";
        public static const event_put_resource_endpoint_item: String = "put_resource_endpoint_item";


    /*
     * Returns void 
     */
    public function delete_resource_endpoint (mname: String, rname: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/edgemodules/{mname}/{rname}".replace(/{format}/g,"xml").replace("{" + "mname" + "}", getApiInvoker().escapeString(mname)).replace("{" + "rname" + "}", getApiInvoker().escapeString(rname));

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

        var token:AsyncToken = getApiInvoker().invokeAPI(path, "DELETE", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "delete_resource_endpoint";

        token.returnType = null ;
        return requestId;

    }

    /*
     * Returns void 
     */
    public function delete_resource_endpoint_item (mname: String, rname: String, wildcard: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/edgemodules/{mname}/{rname}/{wildcard}".replace(/{format}/g,"xml").replace("{" + "mname" + "}", getApiInvoker().escapeString(mname)).replace("{" + "rname" + "}", getApiInvoker().escapeString(rname)).replace("{" + "wildcard" + "}", getApiInvoker().escapeString(wildcard));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
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

        
        headerParams["X-Embarcadero-Application-Id"] = toPathValue(xEmbarcaderoApplicationId);
headerParams["X-Embarcadero-App-Secret"] = toPathValue(xEmbarcaderoAppSecret);
headerParams["X-Embarcadero-Master-Secret"] = toPathValue(xEmbarcaderoMasterSecret);

        var token:AsyncToken = getApiInvoker().invokeAPI(path, "DELETE", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "delete_resource_endpoint_item";

        token.returnType = null ;
        return requestId;

    }

    /*
     * Returns void 
     */
    public function get_resource_endpoint (mname: String, rname: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/edgemodules/{mname}/{rname}".replace(/{format}/g,"xml").replace("{" + "mname" + "}", getApiInvoker().escapeString(mname)).replace("{" + "rname" + "}", getApiInvoker().escapeString(rname));

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

        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_resource_endpoint";

        token.returnType = null ;
        return requestId;

    }

    /*
     * Returns void 
     */
    public function get_resource_endpoint_item (mname: String, rname: String, wildcard: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/edgemodules/{mname}/{rname}/{wildcard}".replace(/{format}/g,"xml").replace("{" + "mname" + "}", getApiInvoker().escapeString(mname)).replace("{" + "rname" + "}", getApiInvoker().escapeString(rname)).replace("{" + "wildcard" + "}", getApiInvoker().escapeString(wildcard));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
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

        
        headerParams["X-Embarcadero-Application-Id"] = toPathValue(xEmbarcaderoApplicationId);
headerParams["X-Embarcadero-App-Secret"] = toPathValue(xEmbarcaderoAppSecret);
headerParams["X-Embarcadero-Master-Secret"] = toPathValue(xEmbarcaderoMasterSecret);

        var token:AsyncToken = getApiInvoker().invokeAPI(path, "GET", queryParams, null, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "get_resource_endpoint_item";

        token.returnType = null ;
        return requestId;

    }

    /*
     * Returns void 
     */
    public function patch_resource_endpoint (mname: String, rname: String, body: Object, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/edgemodules/{mname}/{rname}".replace(/{format}/g,"xml").replace("{" + "mname" + "}", getApiInvoker().escapeString(mname)).replace("{" + "rname" + "}", getApiInvoker().escapeString(rname));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
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

        
        headerParams["X-Embarcadero-Application-Id"] = toPathValue(xEmbarcaderoApplicationId);
headerParams["X-Embarcadero-App-Secret"] = toPathValue(xEmbarcaderoAppSecret);
headerParams["X-Embarcadero-Master-Secret"] = toPathValue(xEmbarcaderoMasterSecret);

        var token:AsyncToken = getApiInvoker().invokeAPI(path, "PATCH", queryParams, body, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "patch_resource_endpoint";

        token.returnType = null ;
        return requestId;

    }

    /*
     * Returns void 
     */
    public function patch_resource_endpoint_item (mname: String, rname: String, wildcard: String, body: Object, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/edgemodules/{mname}/{rname}/{wildcard}".replace(/{format}/g,"xml").replace("{" + "mname" + "}", getApiInvoker().escapeString(mname)).replace("{" + "rname" + "}", getApiInvoker().escapeString(rname)).replace("{" + "wildcard" + "}", getApiInvoker().escapeString(wildcard));

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

        
        headerParams["X-Embarcadero-Application-Id"] = toPathValue(xEmbarcaderoApplicationId);
headerParams["X-Embarcadero-App-Secret"] = toPathValue(xEmbarcaderoAppSecret);
headerParams["X-Embarcadero-Master-Secret"] = toPathValue(xEmbarcaderoMasterSecret);

        var token:AsyncToken = getApiInvoker().invokeAPI(path, "PATCH", queryParams, body, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "patch_resource_endpoint_item";

        token.returnType = null ;
        return requestId;

    }

    /*
     * Returns void 
     */
    public function post_resource_endpoint (mname: String, rname: String, body: Object, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/edgemodules/{mname}/{rname}".replace(/{format}/g,"xml").replace("{" + "mname" + "}", getApiInvoker().escapeString(mname)).replace("{" + "rname" + "}", getApiInvoker().escapeString(rname));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
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

        
        headerParams["X-Embarcadero-Application-Id"] = toPathValue(xEmbarcaderoApplicationId);
headerParams["X-Embarcadero-App-Secret"] = toPathValue(xEmbarcaderoAppSecret);
headerParams["X-Embarcadero-Master-Secret"] = toPathValue(xEmbarcaderoMasterSecret);

        var token:AsyncToken = getApiInvoker().invokeAPI(path, "POST", queryParams, body, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "post_resource_endpoint";

        token.returnType = null ;
        return requestId;

    }

    /*
     * Returns void 
     */
    public function post_resource_endpoint_item (mname: String, rname: String, wildcard: String, body: Object, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/edgemodules/{mname}/{rname}/{wildcard}".replace(/{format}/g,"xml").replace("{" + "mname" + "}", getApiInvoker().escapeString(mname)).replace("{" + "rname" + "}", getApiInvoker().escapeString(rname)).replace("{" + "wildcard" + "}", getApiInvoker().escapeString(wildcard));

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

        
        headerParams["X-Embarcadero-Application-Id"] = toPathValue(xEmbarcaderoApplicationId);
headerParams["X-Embarcadero-App-Secret"] = toPathValue(xEmbarcaderoAppSecret);
headerParams["X-Embarcadero-Master-Secret"] = toPathValue(xEmbarcaderoMasterSecret);

        var token:AsyncToken = getApiInvoker().invokeAPI(path, "POST", queryParams, body, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "post_resource_endpoint_item";

        token.returnType = null ;
        return requestId;

    }

    /*
     * Returns void 
     */
    public function put_resource_endpoint (mname: String, rname: String, body: Object, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/edgemodules/{mname}/{rname}".replace(/{format}/g,"xml").replace("{" + "mname" + "}", getApiInvoker().escapeString(mname)).replace("{" + "rname" + "}", getApiInvoker().escapeString(rname));

        // query params
        var queryParams: Dictionary = new Dictionary();
        var headerParams: Dictionary = new Dictionary();

        // verify required params are set
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

        
        headerParams["X-Embarcadero-Application-Id"] = toPathValue(xEmbarcaderoApplicationId);
headerParams["X-Embarcadero-App-Secret"] = toPathValue(xEmbarcaderoAppSecret);
headerParams["X-Embarcadero-Master-Secret"] = toPathValue(xEmbarcaderoMasterSecret);

        var token:AsyncToken = getApiInvoker().invokeAPI(path, "PUT", queryParams, body, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "put_resource_endpoint";

        token.returnType = null ;
        return requestId;

    }

    /*
     * Returns void 
     */
    public function put_resource_endpoint_item (mname: String, rname: String, wildcard: String, body: Object, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/edgemodules/{mname}/{rname}/{wildcard}".replace(/{format}/g,"xml").replace("{" + "mname" + "}", getApiInvoker().escapeString(mname)).replace("{" + "rname" + "}", getApiInvoker().escapeString(rname)).replace("{" + "wildcard" + "}", getApiInvoker().escapeString(wildcard));

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

        
        headerParams["X-Embarcadero-Application-Id"] = toPathValue(xEmbarcaderoApplicationId);
headerParams["X-Embarcadero-App-Secret"] = toPathValue(xEmbarcaderoAppSecret);
headerParams["X-Embarcadero-Master-Secret"] = toPathValue(xEmbarcaderoMasterSecret);

        var token:AsyncToken = getApiInvoker().invokeAPI(path, "PUT", queryParams, body, headerParams);

        var requestId: String = getUniqueId();

        token.requestId = requestId;
        token.completionEventType = "put_resource_endpoint_item";

        token.returnType = null ;
        return requestId;

    }
}
}
