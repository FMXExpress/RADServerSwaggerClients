@isTest
private class SwagEdgeModulesInvokersApiTest {
    /**
     * Invoke Resource Delete Method
     *
     * Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
     */
    @isTest
    private static void deleteResourceEndpointTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'mname' => 'mname_example',
            'rname' => 'rname_example',
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagEdgeModulesInvokersApi api;

        api = new SwagEdgeModulesInvokersApi(new SwagClient());

        api.deleteResourceEndpoint(params);
    }

    /**
     * Invoke Resource/* Delete Method
     *
     * Used to invoke the DELETE method of the resource from an existing EMS EdgeModule.
     */
    @isTest
    private static void deleteResourceEndpointItemTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'mname' => 'mname_example',
            'rname' => 'rname_example',
            'wildcard' => 'wildcard_example',
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagEdgeModulesInvokersApi api;

        api = new SwagEdgeModulesInvokersApi(new SwagClient());

        api.deleteResourceEndpointItem(params);
    }

    /**
     * Invoke Resource Get Method
     *
     * Used to invoke the GET method of the resource from an existing EMS EdgeModule.
     */
    @isTest
    private static void getResourceEndpointTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'mname' => 'mname_example',
            'rname' => 'rname_example',
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagEdgeModulesInvokersApi api;

        api = new SwagEdgeModulesInvokersApi(new SwagClient());

        api.getResourceEndpoint(params);
    }

    /**
     * Invoke Resource/* Get Method
     *
     * Used to invoke the GET method of the resource from an existing EMS EdgeModule.
     */
    @isTest
    private static void getResourceEndpointItemTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'mname' => 'mname_example',
            'rname' => 'rname_example',
            'wildcard' => 'wildcard_example',
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagEdgeModulesInvokersApi api;

        api = new SwagEdgeModulesInvokersApi(new SwagClient());

        api.getResourceEndpointItem(params);
    }

    /**
     * Invoke Resource Patch Method
     *
     * Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
     */
    @isTest
    private static void patchResourceEndpointTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'mname' => 'mname_example',
            'rname' => 'rname_example',
            'body' => Object.getExample(),
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagEdgeModulesInvokersApi api;

        api = new SwagEdgeModulesInvokersApi(new SwagClient());

        api.patchResourceEndpoint(params);
    }

    /**
     * Invoke Resource/* Patch Method
     *
     * Used to invoke the PATCH method of the resource from an existing EMS EdgeModule.
     */
    @isTest
    private static void patchResourceEndpointItemTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'mname' => 'mname_example',
            'rname' => 'rname_example',
            'wildcard' => 'wildcard_example',
            'body' => Object.getExample(),
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagEdgeModulesInvokersApi api;

        api = new SwagEdgeModulesInvokersApi(new SwagClient());

        api.patchResourceEndpointItem(params);
    }

    /**
     * Invoke Resource Post Method
     *
     * Used to invoke the POST method of the resource from an existing EMS EdgeModule.
     */
    @isTest
    private static void postResourceEndpointTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'mname' => 'mname_example',
            'rname' => 'rname_example',
            'body' => Object.getExample(),
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagEdgeModulesInvokersApi api;

        api = new SwagEdgeModulesInvokersApi(new SwagClient());

        api.postResourceEndpoint(params);
    }

    /**
     * Invoke Resource/* Post Method
     *
     * Used to invoke the POST method of the resource from an existing EMS EdgeModule.
     */
    @isTest
    private static void postResourceEndpointItemTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'mname' => 'mname_example',
            'rname' => 'rname_example',
            'wildcard' => 'wildcard_example',
            'body' => Object.getExample(),
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagEdgeModulesInvokersApi api;

        api = new SwagEdgeModulesInvokersApi(new SwagClient());

        api.postResourceEndpointItem(params);
    }

    /**
     * Invoke Resource Put Method
     *
     * Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
     */
    @isTest
    private static void putResourceEndpointTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'mname' => 'mname_example',
            'rname' => 'rname_example',
            'body' => Object.getExample(),
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagEdgeModulesInvokersApi api;

        api = new SwagEdgeModulesInvokersApi(new SwagClient());

        api.putResourceEndpoint(params);
    }

    /**
     * Invoke Resource/* Put Method
     *
     * Used to invoke the PUT method of the resource from an existing EMS EdgeModule.
     */
    @isTest
    private static void putResourceEndpointItemTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'mname' => 'mname_example',
            'rname' => 'rname_example',
            'wildcard' => 'wildcard_example',
            'body' => Object.getExample(),
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagEdgeModulesInvokersApi api;

        api = new SwagEdgeModulesInvokersApi(new SwagClient());

        api.putResourceEndpointItem(params);
    }
}