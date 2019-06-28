package io.swagger.client.api {

import io.swagger.common.ApiInvoker;
import io.swagger.exception.ApiErrorCodes;
import io.swagger.exception.ApiError;
import io.swagger.common.ApiUserCredentials;
import io.swagger.event.Response;
import io.swagger.common.SwaggerApi;
import io.swagger.client.model.FieldGroupObject;
import io.swagger.client.model.GroupAddObject;
import io.swagger.client.model.GroupObject;
import io.swagger.client.model.UpdateGroupObject;
import io.swagger.client.model.UpdatedGroupObject;

import mx.rpc.AsyncToken;
import mx.utils.UIDUtil;
import flash.utils.Dictionary;
import flash.events.EventDispatcher;

public class GroupsApi extends SwaggerApi {
    /**
    * Constructor for the GroupsApi api client
    * @param apiCredentials Wrapper object for tokens and hostName required towards authentication
    * @param eventDispatcher Optional event dispatcher that when provided is used by the SDK to dispatch any Response
    */
    public function GroupsApi(apiCredentials: ApiUserCredentials, eventDispatcher: EventDispatcher = null) {
        super(apiCredentials, eventDispatcher);
    }

        public static const event_add_group: String = "add_group";
        public static const event_delete_group: String = "delete_group";
        public static const event_get_group: String = "get_group";
        public static const event_get_group_fields: String = "get_group_fields";
        public static const event_get_groups: String = "get_groups";
        public static const event_update_group: String = "update_group";


    /*
     * Returns void 
     */
    public function add_group (body: GroupAddObject, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/groups".replace(/{format}/g,"xml");

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
        token.completionEventType = "add_group";

        token.returnType = null ;
        return requestId;

    }

    /*
     * Returns void 
     */
    public function delete_group (item: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/groups/{item}".replace(/{format}/g,"xml").replace("{" + "item" + "}", getApiInvoker().escapeString(item));

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
        token.completionEventType = "delete_group";

        token.returnType = null ;
        return requestId;

    }

    /*
     * Returns GroupObject 
     */
    public function get_group (item: String, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/groups/{item}".replace(/{format}/g,"xml").replace("{" + "item" + "}", getApiInvoker().escapeString(item));

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
        token.completionEventType = "get_group";

        token.returnType = GroupObject;
        return requestId;

    }

    /*
     * Returns Array 
     */
    public function get_group_fields (xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/groups/fields".replace(/{format}/g,"xml");

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
        token.completionEventType = "get_group_fields";

        token.returnType = Array;
        return requestId;

    }

    /*
     * Returns Array 
     */
    public function get_groups (xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String, skip: Number, limit: Number, order: Number, where: String): String {
        // create path and map variables
        var path: String = "/groups".replace(/{format}/g,"xml");

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
        token.completionEventType = "get_groups";

        token.returnType = Array;
        return requestId;

    }

    /*
     * Returns UpdatedGroupObject 
     */
    public function update_group (item: String, body: UpdateGroupObject, xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/groups/{item}".replace(/{format}/g,"xml").replace("{" + "item" + "}", getApiInvoker().escapeString(item));

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
        token.completionEventType = "update_group";

        token.returnType = UpdatedGroupObject;
        return requestId;

    }
}
}
