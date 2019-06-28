@isTest
private class SwagPushApiTest {
    /**
     * Send Push
     *
     * Used to send a push notification message to a registered device
     */
    @isTest
    private static void sendTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(201);
        res.setStatus('Created');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'body' => SwagPushObject.getExample(),
            'xEmbarcaderoApplicationId' => 'xEmbarcaderoApplicationId_example',
            'xEmbarcaderoAppSecret' => 'xEmbarcaderoAppSecret_example',
            'xEmbarcaderoMasterSecret' => 'xEmbarcaderoMasterSecret_example'
        };

        SwagClient client;
        SwagPushApi api;

        api = new SwagPushApi(new SwagClient());

        api.send(params);
    }
}