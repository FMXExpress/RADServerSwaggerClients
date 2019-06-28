package io.swagger.client.api {

import io.swagger.common.ApiInvoker;
import io.swagger.exception.ApiErrorCodes;
import io.swagger.exception.ApiError;
import io.swagger.common.ApiUserCredentials;
import io.swagger.event.Response;
import io.swagger.common.SwaggerApi;
import io.swagger.client.model.VersionObject;

import mx.rpc.AsyncToken;
import mx.utils.UIDUtil;
import flash.utils.Dictionary;
import flash.events.EventDispatcher;

public class VersionApi extends SwaggerApi {
    /**
    * Constructor for the VersionApi api client
    * @param apiCredentials Wrapper object for tokens and hostName required towards authentication
    * @param eventDispatcher Optional event dispatcher that when provided is used by the SDK to dispatch any Response
    */
    public function VersionApi(apiCredentials: ApiUserCredentials, eventDispatcher: EventDispatcher = null) {
        super(apiCredentials, eventDispatcher);
    }

        public static const event_get_version: String = "get_version";


    /*
     * Returns VersionObject 
     */
    public function get_version (xEmbarcaderoApplicationId: String, xEmbarcaderoAppSecret: String, xEmbarcaderoMasterSecret: String): String {
        // create path and map variables
        var path: String = "/version".replace(/{format}/g,"xml");

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
        token.completionEventType = "get_version";

        token.returnType = VersionObject;
        return requestId;

    }
}
}
