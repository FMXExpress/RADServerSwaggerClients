@isTest
private class SwagApiDocApiTest {
    /**
     * Get API EndPoints
     *
     *  |\r\n    Used to retrieve all the API EndPoints.
     */
    @isTest
    private static void aPITest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagApiDocApi api;

        api = new SwagApiDocApi(new SwagClient());

        api.aPI(params);
    }

    /**
     * Get JSON
     *
     * Get API in JSON format
     */
    @isTest
    private static void getAPIJSONFormatTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagApiDocApi api;

        api = new SwagApiDocApi(new SwagClient());

        api.getAPIJSONFormat(params);
    }

    /**
     * Get YAML
     *
     * Get API in YAML format
     */
    @isTest
    private static void getAPIYAMLFormatTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagApiDocApi api;

        api = new SwagApiDocApi(new SwagClient());

        api.getAPIYAMLFormat(params);
    }

    /**
     * Get API EndPoint
     *
     *  |\r\n    Used to retrieve an EndPoint for the API EndPoints.
     */
    @isTest
    private static void getAPIYAMLFormatEndPointTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'item' => 'item_example',
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagApiDocApi api;

        api = new SwagApiDocApi(new SwagClient());

        api.getAPIYAMLFormatEndPoint(params);
    }
}