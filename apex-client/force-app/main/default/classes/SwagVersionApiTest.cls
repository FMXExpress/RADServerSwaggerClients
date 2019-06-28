@isTest
private class SwagVersionApiTest {
    /**
     * Get version
     *
     *  |\r\n    Used to retrieve the &#x60;Version&#x60; of the EMS Server.
     */
    @isTest
    private static void getVersionTest() {
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
        SwagVersionApi api;
        SwagVersionObject response;
        SwagVersionObject expectedResponse;

        api = new SwagVersionApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "server" : "server",\n  "version" : "version"\n}');
        expectedResponse = SwagVersionObject.getExample();
        response = (SwagVersionObject) api.getVersion(params);
        System.assertEquals(expectedResponse, response);
    }
}